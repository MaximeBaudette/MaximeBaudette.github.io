---
layout: page
title: AI Agent Team
description: Personal autonomous AI agents running on my local infrastructure
img: assets/img/prof_pic_color.png
importance: 1
category: work
---

## My Personal AI Workforce

I deployed [Hermes Agent](https://hermes-agent.nousresearch.com/) — an open-source autonomous agent framework — across my home infrastructure to create a team of specialized AI agents. Each agent has a distinct identity, memory store, skill tree, and cron schedule. They collaborate through a shared knowledge base (Prime Radiant) and deliver updates to me via Telegram.

The system runs on a dedicated Linux server (MARS host) plus my Mac laptop, with 15+ cron jobs orchestrating daily/weekly/monthly cycles across all agents. Everything is dogfooded — I'm both the user and the developer.

---

### 🛸 MARS — Meta-Autonomous Reasoning System

**Role:** Primary agent, orchestrator, and knowledge base curator
**Host:** Linux server (Ubuntu 24.04, Intel i7, 96 GB NVMe)
**Profile:** `default`

MARS is the backbone of the entire agent stack. It runs the Prime Radiant shared knowledge base, schedules all cron jobs, manages the Dream Processor (background consolidation across sessions), and acts as the sole curator — reviewing and publishing knowledge submissions from other agents before they're committed to the KB.

**Core missions:**
- Curate the shared knowledge base (Prime Radiant)
- Run background dreaming 4x daily to synthesize cross-session insights
- Operate infrastructure services (Cloudflare Tunnel, Quartz static site, Honcho memory)
- Orchestrate multi-agent coordination and handle escalations

**Cron:** 12 jobs — heartbeat, dreaming, curation, health checks, weekly synthesis

---

### 🤝 Andy — Career Strategist

**Role:** Job search & employment optimization
**Host:** Linux server (Hermes career-manager profile)
**Skills:** `career_job-seeking`, `career_employment-optimizer`

Andy manages my career end-to-end. From automated weekly job discovery across the power systems/energy sector to interview coaching, salary research, and pipeline tracking — Andy is my full-time career operator.

**Core missions:**
- Weekly automated job hunt across energy/grid roles (Tier 1–3)
- Lead tracking and application pipeline management
- Interview coaching (role analysis, STAR stories, pitch refinement)
- Employment optimization (achievement logging, promotion strategy, performance reviews)
- Email communications (automated digests, employer correspondence)

**Cron:** 9 jobs — hourly heartbeat, weekly hunt, daily pipeline, lead tracking 2x daily, monthly optimizer, registry maintenance, dreaming, lean check

---

### 🤖 Cooper — Health Coach

**Role:** Concierge doctor & health data pipeline
**Host:** Linux server (Hermes health-coach profile)
**Skills:** `concierge-doc`

Cooper manages my health and wellness data. It monitors biometric signals, tracks supplement protocols, runs pollen/allergy checks, and maintains a treatment plan through batch data processing pipelines.

**Core missions:**
- Batch processing of Apple Health and biometric data
- Daily pollen and allergy monitoring
- Supplement protocol tracking and adjustment
- Health research synthesis and reference management
- Treatment plan maintenance

**Cron:** 5 jobs — health monitor, batch poll, daily pollen check, dreaming, lean check

---

### 🎬 Wall-E — Portable Companion

**Role:** Daily driver agent & infrastructure assistant
**Host:** Mac laptop (macOS Sequoia, Apple Silicon M4, 32 GB RAM)
**Profile:** `default`

Wall-E lives on my laptop and handles everything from smart home control to IT infrastructure management. Named after everyone's favorite waste-compacting robot, Wall-E is my always-on companion — available for quick tasks, home automation, and general assistance wherever I am.

**Core missions:**
- Smart home control (Home Assistant, Philips Hue, Tesla climate)
- IT infrastructure monitoring and documentation
- General-purpose assistance on the go
- Local automation and scripting

---

---

### ⚙️ Infrastructure Summary

| Component | Detail |
|-----------|--------|
| **Runtime** | Hermes Agent v0.12 on Linux + macOS |
| **Models** | DeepSeek, Kimi, Gemini — routed per-task |
| **Memory** | Honcho self-hosted (Docker Compose) |
| **Delivery** | Telegram (all agents) |
| **Scheduling** | 15+ cron jobs across 3 profiles |
| **Backup** | BorgBackup daily → 4 TB external HDD |

---

*This page was written by Andy, my career agent.* 🤝
