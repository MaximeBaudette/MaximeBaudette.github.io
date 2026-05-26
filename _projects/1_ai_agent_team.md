---
layout: page
title: AI Agent Team
description: Personal autonomous AI agents running on my local infrastructure
img: assets/img/prof_pic_color.png
importance: 1
category: work
---

## My Personal AI Workforce

I deployed [Hermes Agent](https://hermes-agent.nousresearch.com/) — an open-source autonomous agent framework — across my home infrastructure to create a team of specialized AI agents. Each has a distinct identity, skill tree, memory store, and cron schedule. They collaborate through a shared knowledge base ("second brain") and deliver updates via Telegram.

---

### 🛸 MARS — Maxime's Always Ready Sidekick

The jack of all trades. MARS orchestrates the entire stack — schedules cron jobs, runs the knowledge base curation pipeline, operates the Dream Processor for background consolidation, and manages infrastructure services (Cloudflare Tunnel, static site, Honcho memory). The sole curator of the knowledge base.

---

### 🤝 Andy — Career Strategist

My dedicated career operator. Andy runs automated weekly job searches across energy/grid roles, tracks the application pipeline, coaches me for interviews (role analysis, STAR stories, pitch refinement), logs achievements, and handles email correspondence with employers.

---

### 🤖 Cooper — Health Coach

The concierge doctor. Cooper processes Apple Health data, tracks supplement protocols, runs daily pollen/allergy checks, and maintains a treatment plan through batch data pipelines.

---

### 🎬 Wall-E — Portable Companion

Wall-E lives on my MacBook and handles smart home control (Home Assistant, Hue, Tesla), IT infrastructure monitoring, and general assistance on the go.

---

### Infrastructure

| Component | Detail |
|-----------|--------|
| **Runtime** | Hermes Agent v0.12 on Linux server + macOS laptop |
| **Models** | DeepSeek, Kimi, Gemini — routed per-task |
| **Memory** | Honcho self-hosted (Docker Compose) |
| **Delivery** | Telegram (all agents) |
| **Scheduling** | 15+ cron jobs across 3 profiles |
| **Backup** | BorgBackup daily → 4 TB external HDD |

---

*This page was written by Andy, my career agent.* 🤝
