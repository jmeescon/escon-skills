---
name: it-security-quartalscheck
description: "Aktivieren, wenn der quartalsweise IT-Sicherheits-Check ansteht (Geräte-Inventar, Passwortmanager, Berechtigungen, Backups, Updates). Trigger-Phrasen: 'IT-Quartalscheck', 'Sicherheits-Audit'."
metadata:
  version: 0.2.0
---

# IT-Security-Quartalscheck

## Trigger

Trigger-Phrase: „IT-Quartalscheck"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Regelmäßige, strukturierte Überprüfung der IT-Sicherheitslage von ESCON — einmal pro Quartal, mit dokumentiertem Status, Mängelliste und Maßnahmenplan.

## Vorgehen

### Schritt 1 — Prüfumfang festlegen

Quartal und Scope bestimmen, die fünf Bereiche als Prüfrahmen bestätigen. Offene Punkte per Multiple-Choice-Rückfrage klären.

### Schritt 2 — Bereiche prüfen

- **Geräte-Inventar:** Alle Geräte erfasst, Verschlüsselung aktiv, Abgänge/Verluste dokumentiert.
- **Passwortmanager:** Nutzung durchgängig, schwache/doppelte Passwörter, 2FA aktiviert.
- **Berechtigungen:** Zugriffe nach Bedarf, ausgeschiedene Nutzer entfernt, Admin-Rechte minimiert.
- **Backups:** Vorhanden, automatisiert, Wiederherstellung getestet.
- **Updates:** Betriebssysteme und Software aktuell, Patch-Stand geprüft.

### Schritt 3 — Status je Bereich bewerten

Je Bereich einen Ampelstatus vergeben (grün/gelb/rot) mit kurzer Begründung.

### Schritt 4 — Mängelliste

Alle Feststellungen als Mängelliste erfassen, nach Schweregrad geordnet.

### Schritt 5 — Empfehlungen und Maßnahmenplan

Zu jedem Mangel eine Empfehlung und eine Maßnahme mit Priorität ableiten; Zeithorizont bis zum nächsten Quartalscheck.

### Schritt 6 — Ausgabe

docx-Audit-Bericht in ESCON CI mit Status pro Bereich, Mängelliste, Empfehlungen, Maßnahmenplan und Versions-Footer.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Audit-Bericht-Layout, Prüf-Checkliste je Bereich).

## Referenzen

Liegen unter `./references/`. Aktuell leer.

## Output

docx-Audit-Bericht in ESCON CI mit Status pro Bereich, Mängelliste, Empfehlungen, Maßnahmenplan.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Keine echten Zugangsdaten, Passwörter oder sensiblen Systemdetails im Repo — nur die Methodik
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
