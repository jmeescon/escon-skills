# ESCON Skills

Wiederkehrende Workflows der ESCON GmbH, codifiziert als Skills für Claude.

Pendant zu [coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills) — gleiches Format, nur mit ESCON-spezifischer Methodik.

## Verwendung

Claude klont dieses Repo und liest die jeweilige `SKILL.md` bei passendem Trigger:

```bash
git clone https://github.com/jmeescon/escon-skills.git /home/claude/escon-skills
```

## Skills im Repo

| Skill | Trigger-Phrase | Status |
|---|---|---|
| `einwertung` | „Einwertung [Adresse]" | Aktiv (v0.2.0) |
| `expose-erstellung` | „Exposé für [Objekt]" | Aktiv (v0.2.0) |
| `vertriebsmemo` | „Vertriebsmemo [Objekt]" | Aktiv (v0.2.0) |
| `mandats-folder-setup` | „Folder-Setup [Objekt]" | Aktiv (v0.2.0) |
| `hausbuch-aufbau` | „Hausbuch [Objekt]" | Aktiv (v0.2.0) |
| `bautraeger-akquise` | „Bauträger-Pitch [Zielgruppe]" | Aktiv (v0.2.0) |
| `lagetexte` | „Lagetexte für [Ort]" | Aktiv (v0.2.0) |
| `nauen-immocloud-pflege` | „Nauen-Pflege" | Aktiv (v0.2.0) |
| `trade-recap` | „Trade-Recap" | Aktiv (v0.2.0) |
| `it-security-quartalscheck` | „IT-Quartalscheck" | Aktiv (v0.2.0) |

## Konventionen

- Pfade in ASCII (keine Umlaute, kein ß) — Inhalte in den SKILL.md selbstverständlich mit korrekten deutschen Umlauten
- Keine Mandanten-/Kundennamen, keine personenbezogenen Daten, keine konkreten Vermögensangaben im Repo
- Outputs folgen ESCON CI (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display, DM Sans)
- Versionierung pro Skill über `metadata.version` im YAML-Frontmatter

## Skill-Format

Jede `SKILL.md` enthält:

```markdown
---
name: skill-name
description: Trigger-Beschreibung (wann lädt Claude diesen Skill)
metadata:
  version: 0.1.0
---

# Skill-Titel
## Trigger
## Vorgehen (Methodik in Schritten)
## Templates
## Output
```
