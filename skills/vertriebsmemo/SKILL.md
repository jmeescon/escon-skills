---
name: vertriebsmemo
description: Aktivieren, wenn für ein neues Mandat ein internes Vertriebsmemo plus Klärungsbedarf-Liste erstellt werden soll. Trigger-Phrasen: 'Vertriebsmemo [Objekt]', 'Mandatsmemo', 'interne Bewertung'. Internes Strukturierungsdokument vor Marktstart.
metadata:
  version: 0.1.0
---

# Vertriebsmemo + Klärungsbedarf

## Trigger

Trigger-Phrase: „Vertriebsmemo [Objekt]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Internes Briefing-Dokument für Vertriebsleitung und Vertriebsteam mit identifiziertem Klärungsbedarf.

## Vorgehen

> **STATUS: SKELETT.** Die Methodik in diesem Abschnitt ist noch nicht definiert.
> Sie wird vom Nutzer (Jürgen Meehsen) blockweise eingeliefert und hier ergänzt.
> Bis zur Befüllung dieses Abschnitts kann Claude den Skill nicht produktiv anwenden — Claude bittet den User stattdessen, die Methodik einzuliefern.

### Schritt 1
*[zu definieren]*

### Schritt 2
*[zu definieren]*

### Schritt 3
*[zu definieren]*

## Templates

Liegen unter `./templates/`. Aktuell leer.

## Referenzen

Liegen unter `./references/`. Aktuell leer.

## Output

docx in ESCON CI mit Mandatsdaten, Vermarktungseinschätzung, Risikopunkten, offenen Klärungsfragen, Empfehlung zum Vorgehen.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
