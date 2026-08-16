# Contributing

Thanks for considering a contribution! This is a small, focused project — here's how to help well.

## What we welcome

- **Bug reports**: skill format issues after Claude Code updates, template errors, broken links
- **Language corrections**: the chapter notes and templates contain English-language content — corrections by native or near-native speakers are especially valuable
- **New templates**: fillable templates for sections not yet covered
- **Translation**: Chinese<->English improvements of the study notes

## Before you open an issue

1. Search existing issues first.
2. Include: your agent (Claude Code / Amp / Copilot CLI), version, and the exact command you ran.
3. For install problems, run `npx skills add Justinjchen-Cornell/Science-Research-Writing-Skill` in a temp dir and paste the output.

## Pull request checklist

- [ ] `python .github/scripts/validate.py` passes locally
- [ ] If you touch SKILL.md or chapters/, run `validate_skill.py --lens claude SKILL.md` (from the book-to-skill repo)
- [ ] Keep chapter files under ~1,800 words; density over length
- [ ] Preserve the author's exact framework names (no renaming "The 5 Whys" into "asking why repeatedly")

## Copyright notice

This repo contains condensed notes and brief fair-use quotations from
*Science Research Writing for Non-Native Speakers of English* (c) Imperial
College Press. Do not add large verbatim excerpts of the book. Framework
content is CC BY-NC-SA 4.0 and we keep the repo clean of full-text copies.
