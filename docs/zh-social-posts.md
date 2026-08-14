# 中文社区发帖文案（三平台）

> 发布时机：等 PR #70 合并后发（有"入选精选列表"背书更硬），或现在就发（内容本身够硬）。
> 配图建议：README 截图 + before/after demo 的对比图（docs/demo.md 里的烂摘要 vs 改写后）。

---

## 一、V2EX（程序员社区，长文友好）

**标题：** 我把一本 245 页的学术写作书，压缩成了一个可执行的 Claude Code skill

**正文：**

做英文论文写作的人都有个痛点：不是不懂英语，是不懂"论文的套路"。

帝国理工一位教了 30 年学术写作的老师（Hilary Glasman-Deal）写了一本书《Science Research Writing for Non-Native Speakers of English》，核心观点很硬核：**科学写作是高度套路化的，你不需要学更多英语，你需要学那套有限的结构和词汇**。

我用开源的 book-to-skill 流水线把这本书做成了 Claude Code 的 skill，公开发布：

github.com/Justinjchen-Cornell/Science-Research-Writing-Skill

它包含：
- 7 个按需加载的章节：Introduction / Methodology / Results / Discussion / Abstract 五段的四部件模型 + 时态对（Present Simple vs Perfect 的语义差异）、情态动词校准表、hedging 阶梯、连接词库
- 5 个可直接填写的模板（带占位符，套用即可）
- 一个 before/after demo：烂摘要 → 可发表摘要，每一步改写的理由都标了

最打动我的一个细节：书里说"你写 'the pulses were split' 用过去时被动，读者才知道这是你的创新；写 'is inserted' 读者会以为是标准流程"——时态在论文里是功能信号，不是语法考试。

项目 CI 每天校验格式，框架内容 CC BY-NC-SA 可自由 fork。

顺便：这本书本身有版权，仓库只含浓缩笔记和短引用，不放原文。

---

## 二、小红书（种草风，配图为主）

**标题：** 科研人狂喜｜我把论文写作书做成了 AI skill 📚✨

**正文：**

写英文论文总被说"不够专业"？不是你英语差，是你没掌握论文的套路！

📖 帝国理工 30 年教龄的老师写的《Science Research Writing》有个核心观点：
**科学写作 = 固定结构 + 有限词汇，套路化程度高到可怕**

我把这本书做成了 AI skill（Claude Code 可用）：
✅ 5 大段落写作模型（Intro/Methods/Results/Discussion/Abstract）
✅ 时态选择决策表（哪个时态代表"你的发现"）
✅ 可直接填写的模板，套用就能写
✅ before/after 实例：烂摘要 vs 可发表摘要

👉 图2 是前后对比，图3 是模板截图

开源免费：GitHub 搜 Science-Research-Writing-Skill（链接在评论置顶）

#科研 #论文写作 #AI工具 #ClaudeCode #SCI #研究生 #博士生 #学术写作

---

## 三、即刻（极客风，短）

**标题：** 把 245 页论文写作书做成了 Claude Code skill

**正文：**

Glasman-Deal 的《Science Research Writing》核心思想：科学写作是套路，不需要更多英语，需要的是模型+词汇。

做成 skill 后：
- 5 段模型（Intro/Methods/Results/Discussion/Abstract）+ 时态/情态/hedging 决策系统
- 5 个可填写模板
- before/after demo（烂摘要→可发表）

repo: github.com/Justinjchen-Cornell/Science-Research-Writing-Skill
流水线：book-to-skill（开源，21k stars）

下一步计划：用同一套流水线做"书→skill"系列，欢迎推荐书。

#ClaudeCode #AI #论文写作 #开源
