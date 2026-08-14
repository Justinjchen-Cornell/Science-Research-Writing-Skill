#!/usr/bin/env python3
"""Self-contained validation for the skill repo (pure stdlib).

Checks: SKILL.md frontmatter, chapter/topic index integrity, all referenced
files exist and are non-trivial, templates present. Exit non-zero on failure.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent.parent
errors = []


def check(cond: bool, msg: str):
    if not cond:
        errors.append(msg)


def main() -> int:
    skill_md = ROOT / "SKILL.md"
    check(skill_md.is_file(), "SKILL.md missing")

    if skill_md.is_file():
        text = skill_md.read_text(encoding="utf-8")
        fm = re.match(r"^---\n(.*?)\n---\n", text, re.DOTALL)
        check(bool(fm), "SKILL.md missing YAML frontmatter")
        if fm:
            for key in ("name:", "description:"):
                check(key in fm.group(1), f"SKILL.md frontmatter missing '{key}'")
        check(len(text.split()) >= 200, "SKILL.md suspiciously short")

        # every chapter link in the index must exist
        for m in re.finditer(r"\[ch\d+\]\(chapters/([^)]+)\)", text):
            check((ROOT / "chapters" / m.group(1)).is_file(),
                  f"chapter file referenced but missing: chapters/{m.group(1)}")
        # supporting files referenced must exist
        for f in ("glossary.md", "patterns.md", "cheatsheet.md"):
            check((ROOT / f).is_file(), f"supporting file missing: {f}")

    # every chapter file is non-trivial
    ch_dir = ROOT / "chapters"
    if ch_dir.is_dir():
        files = sorted(ch_dir.glob("ch*.md"))
        check(len(files) >= 5, f"too few chapters: {len(files)}")
        for f in files:
            check(len(f.read_text(encoding="utf-8").split()) >= 300,
                  f"chapter too thin (<300 words): {f.name}")
    else:
        errors.append("chapters/ directory missing")

    # templates
    tpl = ROOT / "templates"
    for name in ("introduction", "methodology", "results", "discussion", "abstract"):
        check((tpl / f"{name}-template.md").is_file(),
              f"template missing: templates/{name}-template.md")

    # demo
    check((ROOT / "docs" / "demo.md").is_file(), "docs/demo.md missing")

    if errors:
        print("VALIDATION FAILED:")
        for e in errors:
            print("  -", e)
        return 1
    print("VALIDATION OK: frontmatter, chapter index, supporting files, templates, demo")
    return 0


if __name__ == "__main__":
    sys.exit(main())
