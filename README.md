# 🧠 DevMind — AI Learning Accelerator

<div align="center">

### 🚀 [**Live Demo → bob-files-cq6f4w33z-xmen4.vercel.app**](https://bob-files-cq6f4w33z-xmen4.vercel.app)

[![Live Demo](https://img.shields.io/badge/Live%20Demo-Vercel-black?style=for-the-badge&logo=vercel)](https://bob-files-cq6f4w33z-xmen4.vercel.app)
[![GitHub](https://img.shields.io/badge/GitHub-luckyrewatkar12--create-181717?style=for-the-badge&logo=github)](https://github.com/luckyrewatkar12-create/devmind)
[![AI](https://img.shields.io/badge/AI-Google%20Gemini%201.5%20Flash-4285F4?style=for-the-badge&logo=google)](https://aistudio.google.com)
[![Status](https://img.shields.io/badge/Status-Live-brightgreen?style=for-the-badge)]()
[![License](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)]()

<br/>

> **An AI-powered platform that helps developers learn faster, debug smarter, and understand complex code instantly — powered by Google Gemini AI.**

<br/>

</div>

---

## 🏆 Competition Problem Statement

> *"Build an AI-powered solution that helps people **learn faster**, **work smarter**, or become more **productive** while building or understanding technology."*

### 📌 What May Be Built
- ✅ Interactive learning tutors or technical explainers
- ✅ Developer productivity enhancers (documentation synthesis, intelligent workflow automations, contextual debugging copilots)
- ✅ Code explanation tools that clarify complex codebases and architectures

### 🎯 Key Evaluation Focus
> **Clarity, tangible usefulness, and how AI meaningfully improves the learning curve or developer output.**

---

## 📄 Abstract

DevMind is a single-page, AI-powered learning accelerator designed to solve the biggest pain points developers face when learning technology: confusing code, forgetting concepts quickly, getting stuck on bugs, and having no one to ask.

It combines **five AI-driven tools** — a Code Explainer, an Adaptive Quiz Engine, an AI Debugger, a Conversational AI Tutor, and a Learning Dashboard — all powered by **Google Gemini 1.5 Flash** in real time.

The system requires **zero installation**, runs entirely in the browser, and uses a **gamified XP + level system** to keep learners motivated. Unlike static documentation or pre-recorded tutorials, DevMind responds dynamically to the exact code, bugs, and questions a developer has right now — making every interaction **personalized, contextual, and immediately useful**.

---

## 💡 Problem → Solution Mapping

Developers waste hours every day on problems DevMind solves in seconds:

| ❌ Problem | ✅ DevMind Solution |
|---|---|
| Don't understand code you copied | AI explains it step-by-step in plain English instantly |
| Stuck on a bug for hours | AI diagnoses root cause + writes the complete fix |
| Passive learning that doesn't stick | AI-generated adaptive quizzes test real understanding |
| No one to ask questions at 2am | AI Tutor answers any question, 24/7 with full context |
| No motivation to keep learning | XP points, levels, and streaks gamify the journey |
| Generic tutorials not tailored to your level | Beginner / Intermediate / Advanced modes per feature |

---

## ✨ Features — All 5 Modules

### 📊 1. Learning Dashboard
- **Learning Roadmaps** — Visual progress tracking across 6 technologies (JS, Python, React, Node.js, SQL, Git)
- **XP & Level System** — Earn XP for every AI interaction, level up as you learn
- **21-Day Streak Calendar** — Visual daily activity tracker to build habits
- **Stats Panel** — Quizzes taken, average score, day streak, bugs fixed
- **Recent Activity Feed** — Log of your last 5 learning sessions
- **Clickable Roadmap Cards** — Click any technology to start a quiz on it instantly

### 🔍 2. AI Code Explainer
- Paste **any code** in 8 languages: JavaScript, Python, TypeScript, Java, C++, SQL, Rust, Go
- Get a **full AI explanation** including: overview, numbered step-by-step breakdown, key concepts used, worked example with input/output, real-world use cases, and potential improvements
- **Simplify Mode** — Second button generates a beginner-friendly explanation using real-world analogies
- **Load Sample** — Pre-loaded examples for each language
- **Copy button** — Copy the full explanation to clipboard

### ⚡ 3. Adaptive AI Quiz Engine
- **9 topics**: JavaScript, Python, React, Node.js, SQL, Git, TypeScript, Data Structures, System Design
- **3 difficulty levels**: Beginner 🌱, Intermediate ⚡, Advanced 🔥
- AI generates **5 fresh, unique questions every session** — never the same quiz twice
- Questions include **real code snippets** for practical testing
- Instant **answer feedback** with color coding (green ✓ / red ✗)
- **Detailed AI explanation** shown after each answer
- Progress bar, score tracker, XP reward on completion

### 🐛 4. AI Debugger
- Paste your **buggy code** + optional **error/stack trace**
- Supports: JavaScript, Python, TypeScript, Java, C++
- AI returns a **complete debug report**:
  - 🔴 All bugs found with exact line references
  - ⚠️ Root cause explanation (the underlying concept)
  - ✅ Fully corrected code with inline comments
  - 💡 Prevention tips to avoid the bug in future
  - 🔬 Step-by-step self-debugging approach
- **Load Sample Bug** button for instant demo
- **Copy button** for the full fix

### 💬 5. AI Tutor Chat
- **Full conversational AI** powered by Gemini — not pre-written responses
- Maintains **rolling conversation memory** (last 6 messages) for contextual follow-ups
- **8 suggestion chips** for instant common questions
- Answers any question: programming concepts, debugging logic, architecture, career advice, code reviews
- Responses rendered as **rich markdown** — with code blocks, tables, headers, lists
- **Typing indicator** while AI is generating the response
- Real-time, sub-3-second responses

---

## 🤖 How AI Is Used — Technical Deep Dive

All AI features are powered by **Google Gemini 1.5 Flash** via direct REST API calls from the browser. No backend server required.

```
User Input  →  Prompt Engineering  →  Gemini 1.5 Flash API  →  Markdown/JSON Response  →  Rendered UI
```

### Prompt Engineering Strategy Per Feature

**🔍 Code Explainer**
```
Role: Expert programming tutor
Input: User's code + selected language
Prompt requests:
  1. Overview (1-2 sentences)
  2. Step-by-step numbered breakdown
  3. Key concepts and patterns used
  4. Concrete input/output example
  5. Real-world use cases
  6. Potential issues / improvements
Output format: Markdown with code blocks
```

**⚡ Quiz Engine**
```
Role: Quiz generator
Input: Topic + difficulty level
Prompt requests: Exactly 5 MCQ questions in strict JSON format
JSON schema:
  { question, code (optional), options[4], answer (index), explanation }
Constraint: Code snippets in at least 3 questions
Output format: JSON array — parsed and rendered as interactive UI
```

**🐛 AI Debugger**
```
Role: Expert debugger
Input: Buggy code + error message + language
Prompt requests:
  ## Bugs Found (with line refs)
  ## Root Cause
  ## Fixed Code (complete, with comments)
  ## Prevention Tips
  ## How to Debug This Yourself
Output format: Markdown with corrected code blocks
```

**💬 AI Tutor Chat**
```
Role: DevMind expert tutor persona
Input: User message + last 6 messages as context
Context building: Student/Tutor labeled conversation history
Prompt constraints:
  - Thorough, accurate educational answers
  - Working code examples in markdown blocks
  - Real-world analogies for complex concepts
  - Cover edge cases and common mistakes
  - Encouraging and conversational tone
Output format: Conversational markdown
```

---

## 📈 Key Metrics

| Metric | Value |
|---|---|
| AI-powered features | 5 |
| Languages supported (Code Explainer) | 8 |
| Quiz topics | 9 |
| Difficulty levels per topic | 3 |
| Unique quiz questions possible | Infinite (AI-generated) |
| Average AI response time | < 3 seconds |
| Dependencies | 0 |
| Lines of code | ~900 |
| File size | ~80KB (single file) |
| Backend server required | ❌ None |

---

## 🛠️ Technology Stack

| Layer | Technology | Purpose |
|---|---|---|
| **Frontend** | HTML5, CSS3, Vanilla JavaScript (ES2022) | UI, interactions, rendering |
| **AI Model** | Google Gemini 1.5 Flash | All AI features |
| **API** | Gemini REST API (generativelanguage.googleapis.com) | AI inference |
| **Deployment** | Vercel (Global CDN) | Hosting & edge delivery |
| **Storage** | Browser localStorage | XP persistence, API key |
| **Version Control** | GitHub | Source code management |
| **Markdown** | Custom JS parser | Rendering AI responses |

> ✅ **Zero dependencies** · No build step · No backend server · No Node.js required · Runs 100% in the browser

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────────┐
│                  Browser (Client)                │
│                                                  │
│  ┌──────────┐  ┌──────────┐  ┌──────────────┐  │
│  │Dashboard │  │ Explainer│  │  Quiz Engine │  │
│  └──────────┘  └────┬─────┘  └──────┬───────┘  │
│                     │               │           │
│  ┌──────────┐  ┌────▼─────┐  ┌──────▼───────┐  │
│  │AI Tutor  │  │ Debugger │  │Prompt Builder│  │
│  └────┬─────┘  └────┬─────┘  └──────┬───────┘  │
│       │             │               │           │
│  ┌────▼─────────────▼───────────────▼───────┐  │
│  │          Gemini API Client (JS)           │  │
│  └──────────────────┬────────────────────────┘  │
└─────────────────────┼──────────────────────────-┘
                      │ HTTPS REST API
              ┌───────▼──────────┐
              │  Google Gemini   │
              │  1.5 Flash API   │
              └──────────────────┘
```

---

## 🚀 Getting Started

### Option 1: Use the Live Demo (Recommended)
👉 **[bob-files-cq6f4w33z-xmen4.vercel.app](https://bob-files-cq6f4w33z-xmen4.vercel.app)**

### Option 2: Run Locally
```bash
# Clone the repo
git clone https://github.com/luckyrewatkar12-create/devmind.git

# Open in browser — no server needed!
# Windows
start devmind/index.html

# Mac/Linux
open devmind/index.html
```

### Activate AI Features (Free)
1. Go to **[aistudio.google.com/app/apikey](https://aistudio.google.com/app/apikey)**
2. Sign in with Google → Click **"Create API Key"** → Copy it
3. In DevMind, click **"Set API Key"** button (top right — shows red dot)
4. Paste your key → Click **"Save & Activate AI"**
5. Dot turns 🟢 green — all 5 AI features are now live!

> Your API key is stored only in your browser's localStorage. Free tier: 15 requests/min, no credit card needed.

---

## 📁 Project Structure

```
devmind/
├── index.html        # Complete app — HTML + CSS + JS (single file, ~80KB)
├── vercel.json       # Vercel project-level config
vercel.json           # Root deployment routing
README.md             # This file
.gitignore            # Git ignore rules
```

---

## 🎮 Gamification System

| Element | Details |
|---|---|
| **XP Points** | +50 XP for explaining code, +40 XP for debugging, +20 XP per tutor chat, +30 XP per correct quiz answer |
| **Levels** | Every 2,000 XP = 1 level up |
| **Streak Tracker** | 21-day activity calendar — green = active day, blue = today |
| **Stats** | Quizzes taken, average score, day streak, bugs fixed — all live in sidebar |
| **XP Toast** | Animated notification appears on every XP gain |
| **Persistence** | XP saved in localStorage — survives page refreshes |

---

## 🔐 Privacy & Security

- Your Gemini API key is stored **only in your browser** (localStorage)
- API calls go **directly from your browser to Google** — no intermediate server
- No user data is collected or stored anywhere
- No login required

---

## 👨‍💻 Built By

**luckyrewatkar12-create** (Lucky Rewatkar)

Built for the **AI Learning Accelerator Hackathon 2025**

---

## 📜 License

MIT License — feel free to fork, modify, and build on top of DevMind.

---

<div align="center">
  <br/>
  <strong>⭐ Star this repo if you found it useful!</strong>
  <br/><br/>
  <a href="https://bob-files-cq6f4w33z-xmen4.vercel.app"><strong>🌐 Try the Live Demo →</strong></a>
  <br/><br/>
  Made with ❤️ and IBM Bob
</div>
