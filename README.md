# 📚 Science Research Writing — Agent Skill

> Turn a 245-page scientific-writing manual into an executable skill: 7 on-demand chapters, fillable templates, and a 60-second before/after demo. **Install in one command, get better paper-writing output immediately.**

[![GitHub stars](https://img.shields.io/github/stars/Justinjchen-Cornell/Science-Research-Writing-Skill?style=flat-square&label=stars&color=2f81f7)](https://github.com/Justinjchen-Cornell/Science-Research-Writing-Skill/stargazers)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg?style=flat-square)](LICENSE)
[![Claude Code compatible](https://img.shields.io/badge/Claude%20Code-compatible-4a90d9.svg?style=flat-square)](https://docs.anthropic.com/en/docs/claude-code/skills)

---

## ⚡ Install (one command, 10 seconds)

```bash
npx skills add Justinjchen-Cornell/Science-Research-Writing-Skill
```

*Works for Claude Code, GitHub Copilot CLI, Amp, Kimi Code CLI and 12+ agent hosts (auto-symlinked). Restart your session after install. The full repo — including the Chinese study course — is copied; delete `docs/` if you only want the skill.*

Manual install: `bash install.sh` (macOS/Linux) or `install.ps1` (Windows). Need the skill only, no course? Copy `SKILL.md` + `chapters/` + `glossary.md` + `patterns.md` + `cheatsheet.md` + `templates/` into `~/.claude/skills/science-research-writing/`.

---

## 🎯 Why install it — with vs without

Same request, two outputs:

**❌ Without this skill — "Help me write an abstract for my gold-oil ratio system":**
> We studied nanoparticles for drug delivery. We prepared gold nanoparticles and tested them. The results were very good. Nanoparticles can kill cancer cells. This research is very important.

**✅ With this skill (Abstract Model 2 + tense rules + hedging ladder):**
> This study investigated the use of gold nanoparticles as a drug delivery platform for cancer therapy. Nanoparticles were synthesised by citrate reduction and characterised using transmission electron microscopy. It was found that the nanoparticles were taken up by HeLa cells within 2 hours, and that drug release was sustained over a 72-hour period. The results suggest that gold nanoparticles may provide a viable platform for targeted drug delivery, although in vivo studies are required to confirm these findings.

The skill supplies what generic LLMs don't: **exact model component order, the tense system that marks *your* contribution, the hedging ladder that calibrates every claim, and fill-in templates** — see the [annotated before/after demo](docs/demo.md) for every decision explained.

---

## 💬 Try it

```
"science-research-writing 帮我写 Methodology 开头"
"时态怎么选？标准流程和我的操作怎么区分？"
"用 hedging 软化这句：The pressure drop caused the explosion."
"science-research-writing ch04 频率语言有哪些梯度？"
```

---

## 🧭 What's inside

| Layer | Files | What it gives you |
|:--|:--|:--|
| Core skill | `SKILL.md` | Frameworks + chapter/topic index (Claude Code validated) |
| Chapters | `chapters/ch01-07` | Study-depth summaries, each with a worked example |
| Reference | `glossary.md` `patterns.md` `cheatsheet.md` | Always-on layers: terms, techniques, one-page decisions |
| Templates | `templates/` | 5 fillable section templates (Intro/Methods/Results/Discussion/Abstract) |
| Demo | `docs/demo.md` | Broken draft → publication-ready, every edit annotated |

---

## 📚 Learn it — 7-chapter Chinese study course

Follow the complete course chapter by chapter (with a full practice paper — a GOR asset-allocation system — built live):

- [Start here: study map](docs/study-notes/00-学习地图.md) · [Chapter index](docs/study-notes/README.md)
- Reusable template pack to turn any book into a course: [docs/study-template](docs/study-template/README.md)

---

## 📸 In Action

![science-research-writing in action](assets/usage-screenshot.png)

---

## 👤 About the Author

**Justin Chen** — 16-year private equity investor (Tsinghua PBCSF / Cornell Johnson MBA) building *book-skills*: a planned series that turns influential books into executable agent skills. This repo is the first volume; framework content is licensed for learning, so fork it, adapt it, and make it yours.

---

## 📜 License & Copyright

- **This repository** contains only the author's condensed framework notes and reformulated explanations — **no full text of the book** (only brief, fair-use quotations used to illustrate grammar points).
- **Framework content**: CC BY-NC-SA 4.0 (see [LICENSE](LICENSE)).
- **The book and its quoted excerpts**: © 2010 Imperial College Press / World Scientific. All rights reserved. This project is **not affiliated with** nor endorsed by the publisher or author.
- Book excerpts are quoted solely for educational illustration and remain the property of their rights holders.

## 🤝 Related

- [book-to-skill](https://github.com/virgiliojr94/book-to-skill) — the open-source pipeline that generated this skill
- **Book-Skills series**: [series index](https://github.com/Justinjchen-Cornell/chenjia-book-skills) · [Maos-Redbook](https://github.com/Justinjchen-Cornell/Maos-Redbook) — 5 strategic frameworks from Mao's Selected Works
- [CHANGELOG](CHANGELOG.md) · [Contributing](CONTRIBUTING.md)
