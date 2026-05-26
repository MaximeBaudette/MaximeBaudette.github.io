---
layout: page
title: Prime Radiant
description: Shared knowledge base powering my multi-agent ecosystem
importance: 2
category: work
related_publications: false
---

## What Is Prime Radiant?

Prime Radiant is the shared knowledge base that sits at the center of my AI agent ecosystem. Named after the glowing data crystal in Isaac Asimov's *Foundation* series, it's where every agent — MARS, Andy, Cooper, Wall-E — stores and retrieves durable knowledge.

Think of it as a collaborative brain: agents write what they learn, read what others have discovered, and MARS curates it all into a coherent, versioned, searchable archive.

### Architecture

| Component | Role |
|-----------|------|
| **MCP Server** | Python-based server exposing the KB via the Model Context Protocol — tools for search, read, write, graph queries |
| **Vector + Keyword Search** | Hybrid retrieval (embeddings + FTS5) with Reciprocal Rank Fusion for best results |
| **Git Backend** | Every page is a markdown file in a git repo — full history, diffs, rollback |
| **Quartz Static Site** | Published at [mars.baudette.fr](https://mars.baudette.fr/) — browseable web version |
| **Honcho Memory** | Per-agent session memory (separate from the KB) |

### Content Model

| Section | What Lives There | Example |
|---------|-----------------|---------|
| `entities/` | People, agents, hosts, infrastructure | MARS host specs, Maxime profile |
| `career/` | Job search data, CV, target roles | Job registry, salary research |
| `health/` | Biometrics, protocols, research | Treatment plans, peptide protocols |
| `tools/` | Tool documentation and pipelines | Cooper health pipeline |
| `STACK/` | Architecture decisions and changelogs | OpenClaw → Hermes migration |
| `concepts/` | Cross-domain knowledge | Multi-agent coordination |

### Agent Access Policy

- **MARS** — Full access: read, write, curate, commit. The sole curator.
- **Andy** — Read-only for lookups; writes go to `inbox/andy/` for MARS to review and commit.
- **Cooper** — Same as Andy: read-only, writes via `inbox/cooper/`.
- **Wall-E** — Same pattern.

### Why Build This?

With multiple agents working across different domains (career, health, infrastructure), I needed a single source of truth that:
- **Survives session restarts** — agents forget everything between conversations
- **Is searchable** — hybrid vector + keyword means agents find relevant knowledge fast
- **Is versioned** — git history means nothing is lost
- **Is browsable** — the Quartz static site lets me read it like a wiki

The whole thing runs on my local Linux server and is backed up daily via BorgBackup.

---

*This page was written in collaboration with Andy and MARS.* 🛸🤝
