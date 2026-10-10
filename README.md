# 🧠 DevMind — AI Learning Accelerator

<div align="center">

### 🚀 [**Live Demo → bob-files-cq6f4w33z-xmen4.vercel.app**](https://bob-files-cq6f4w33z-xmen4.vercel.app)

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Vercel-black?style=for-the-badge&logo=vercel)](https://bob-files-cq6f4w33z-xmen4.vercel.app)
[![GitHub](https://img.shields.io/badge/GitHub-luckyrewatkar12--create-181717?style=for-the-badge&logo=github)](https://github.com/luckyrewatkar12-create/devmind)
[![AI](https://img.shields.io/badge/AI-Google%20Gemini-4285F4?style=for-the-badge&logo=google)](https://aistudio.google.com)

> **An AI-powered platform that helps developers learn faster, debug smarter, and understand complex code instantly.**

</div>

---

## 🏆 Problem Statement

> *"Build an AI-powered solution that helps people **learn faster**, **work smarter**, or become more **productive** while building or understanding technology."*

### What May Be Built
- Interactive learning tutors or technical explainers
- Developer productivity enhancers (documentation synthesis, intelligent workflow automations, contextual debugging copilots)
- Code explanation tools that clarify complex codebases and architectures

### Key Evaluation Focus
> **Clarity, tangible usefulness, and how AI meaningfully improves the learning curve or developer output.**

---

## 💡 Our Solution — DevMind

Developers waste hours every day on problems DevMind solves in seconds:

| Problem | DevMind Solution |
|---|---|
| 😕 Don't understand code you copied | 🔍 AI explains it step-by-step in plain English |
| 🐛 Stuck on a bug for hours | 🤖 AI diagnoses root cause + writes the fix |
| 📚 Passive learning that doesn't stick | ⚡ AI-generated adaptive quizzes test real understanding |
| ❓ No one to ask at 2am | 💬 AI Tutor answers any question, 24/7 |
| 😴 No motivation to keep learning | 📊 XP, levels, streaks gamify the journey |

---

## ✨ Features

| Feature | Description | AI Used |
|---|---|---|
| 📊 **Dashboard** | Learning roadmaps, XP/level system, 21-day streak tracker, activity feed | — |
| 🔍 **AI Code Explainer** | Paste any code in 8 languages → instant step-by-step breakdown with concepts, examples & use cases | ✅ Gemini |
| ⚡ **Adaptive Quiz Engine** | 9 topics × 3 difficulty levels → AI generates 5 fresh unique questions every session | ✅ Gemini |
| 🐛 **AI Debugger** | Paste buggy code + error → root cause analysis, fixed code, and prevention tips | ✅ Gemini |
| 💬 **AI Tutor Chat** | Full conversational AI with memory — answers any programming question with code examples | ✅ Gemini |

---

## 🤖 How AI Is Used

All AI features are powered by **Google Gemini 1.5 Flash** via direct REST API calls from the browser.

```
User Input  →  Prompt Engineering  →  Gemini API  →  Markdown Response  →  Rendered UI
```

### AI Integration Per Feature

**🔍 Code Explainer**
- Sends user's exact code with a structured prompt requesting: overview, numbered steps, key concepts, worked example, use cases, and potential issues
- Output: Rich markdown with syntax-highlighted code blocks

**⚡ Quiz Engine**
- Prompt requests 5 MCQ questions in strict JSON format with code snippets, 4 options, correct answer index, and detailed explanations
- Output: Parsed JSON → rendered as interactive quiz — infinite unique questions, never repeated

**🐛 AI Debugger**
- Sends code + error message with prompt requesting: bugs with line references, root cause explanation, fully corrected code with comments, prevention tips
- Output: Complete debug report with working fixed code

**💬 AI Tutor Chat**
- Builds rolling context from last 6 messages, sends with tutor persona prompt
- Maintains conversation memory — answers follow-ups intelligently
- Output: Conversational markdown rendered in real-time chat bubbles

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| **Frontend** | Pure HTML5, CSS3, Vanilla JavaScript (ES2022) |
| **AI Model** | Google Gemini 1.5 Flash API |
| **Deployment** | Vercel (Global CDN, edge network) |
| **Storage** | Browser localStorage (XP, API key) |
| **Version Control** | GitHub |

> ✅ Zero dependencies · No build step · No backend server · Runs 100% in the browser

---

## 🚀 Run Locally

```bash
# Clone the repo
git clone https://github.com/luckyrewatkar12-create/devmind.git

# Open directly in browser — no server needed!
# Windows
start devmind/index.html

# Mac/Linux
open devmind/index.html
```

### To activate AI features:
1. Get a **free** Gemini API key at [aistudio.google.com/app/apikey](https://aistudio.google.com/app/apikey)
2. Click **"Set API Key"** button (top right of the app)
3. Paste your key → All 5 AI features activate instantly

---

## 📁 Project Structure

```
devmind/
├── index.html      # Complete single-file app (HTML + CSS + JS)
├── vercel.json     # Vercel deployment config
vercel.json         # Root deployment routing
README.md           # This file
```

---

## 👨‍💻 Built By

**luckyrewatkar12-create** — Built for the AI Learning Accelerator Hackathon 2025

---

<div align="center">
  <strong>⭐ Star this repo if you found it useful!</strong><br><br>
  <a href="https://bob-files-cq6f4w33z-xmen4.vercel.app">🌐 Try the Live Demo</a>
</div>
