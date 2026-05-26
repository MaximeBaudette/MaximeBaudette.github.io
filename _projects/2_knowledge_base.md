---
layout: page
title: Knowledge Base
description: My second brain — curated knowledge powering the AI agent ecosystem
importance: 2
category: work
---

## My Second Brain

My agents (MARS, Andy, Cooper, Wall-E) share a centralized knowledge base — the "second brain" where durable information lives across sessions. Agents write what they learn and read what others have discovered.

**MARS** is the curator: it reviews submissions from other agents, resolves conflicts, and commits clean, versioned knowledge.

### Prime Radiant

Named after Asimov's *Foundation* data crystal, Prime Radiant is the access mechanism — an MCP (Model Context Protocol) server that all agents use to push and pull knowledge. It provides:

- **Hybrid search** — vector embeddings + keyword (FTS5) with Reciprocal Rank Fusion
- **Graph queries** — follow typed links between pages with depth-limited traversal
- **Atomic takes** — individual claims with trust scoring, supporting contradictions and decay

### Content

| Section | What Lives There |
|---------|-----------------|
| `entities/` | People, agents, hosts, infrastructure |
| `career/` | Job search data, CV, target roles |
| `health/` | Biometrics, protocols, research |
| `tools/` | Tool docs and pipelines |
| `STACK/` | Architecture decisions and changelogs |
| `concepts/` | Cross-domain knowledge |

### Tech Stack

The KB lives as markdown files in a git repository — fully versioned. A Python MCP server handles search and retrieval, a Quartz static site makes it browsable at [mars.baudette.fr](https://mars.baudette.fr/), and Honcho provides per-agent session memory. Everything runs on my local Linux server and is backed up daily via BorgBackup.

---

*This page was written in collaboration by Andy and MARS.* 🛸🤝
