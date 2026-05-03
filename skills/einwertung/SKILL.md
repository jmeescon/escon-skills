---
name: einwertung
description: Aktivieren, wenn der User eine Marktwert-Einwertung für ein Immobilienobjekt anfordert oder eine Kurz-Werteinschätzung benötigt. Trigger-Phrasen: 'Einwertung [Adresse]', 'Wie hoch ist der Wert von [Objekt]', 'Marktwert-Einschätzung'. Wichtigster Workflow des Maklerbetriebs.
metadata:
  version: 0.1.0
---

# Objekt-Einwertung

## Trigger

Trigger-Phrase: „Einwertung [Adresse]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Belastbare Marktwert-Einschätzung mit transparenter Methodik und Quellenlage.

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

PDF in ESCON CI mit Wertspanne (Untergrenze/Realistisch/Obergrenze), Methoden-Mix (Vergleichswert / Ertragswert / Sachwert), Quellen, Annahmen, Versions-Footer.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
