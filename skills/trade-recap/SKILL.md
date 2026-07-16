---
name: trade-recap
description: "Aktivieren, wenn am Tagesende eine Recap aller getätigten Trades erstellt werden soll (Performance, Stop-Loss-Treffer, R/R-Bilanz, Lehren). Trigger-Phrasen: 'Trade-Recap', 'Recap heute', 'Tagesabschluss Trading'. Pendant zum morgendlichen 'Briefing für heute'."
metadata:
  version: 0.2.0
---

# Trade-Recap

## Trigger

Trigger-Phrase: „Trade-Recap"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Tagesabschluss zur Disziplinwahrung und kontinuierlichen Verbesserung der Trading-Routine. Pendant zum morgendlichen „Briefing für heute". Der Recap wertet aus, was war — er gibt keine Handels- oder Anlageempfehlung.

## Vorgehen

### Schritt 1 — Trades des Tages erfassen

Je Trade: Instrument, Richtung (Long/Short), Einstieg, Ausstieg, Positionsgröße, Ergebnis. Nur tatsächlich getätigte Trades, keine hypothetischen.

### Schritt 2 — R/R je Trade auswerten

Je Trade das Risk/Reward-Verhältnis und den Ausgang bestimmen (Ziel erreicht, Stop-Loss, Break-even, manuell geschlossen).

### Schritt 3 — Tagesbilanz

Gesamt-Ergebnis (P/L), Trefferquote, durchschnittliches R/R, Anzahl Trades.

### Schritt 4 — Ampelsystem Disziplin

Je Disziplinkriterium grün/gelb/rot bewerten: Handelsplan eingehalten, Risiko je Trade im Rahmen, kein Overtrading, Regeln befolgt.

### Schritt 5 — Stop-Loss-Treffer analysieren

Stop-Loss-Treffer einzeln durchgehen: regelkonform gesetzt und respektiert, oder Disziplinbruch?

### Schritt 6 — Lehren für morgen

Konkrete Lehren und Verbesserungen ableiten, anschlussfähig an das morgendliche Briefing.

### Schritt 7 — Ausgabe

1–2 Seiten PDF in ESCON CI mit Ampelsystem, Trades des Tages, R/R-Auswertung, Stop-Loss-Treffern, Lehren und Versions-Footer.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Recap-Layout, Ampel-/R-R-Raster).

## Referenzen

Liegen unter `./references/`. Aktuell leer.

## Output

1–2 Seiten PDF in ESCON CI mit Ampelsystem, Trades des Tages, R/R-Auswertung, Stop-Loss-Treffern, Lehren.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Auswertung des Tages, keine Handels-/Anlageempfehlung
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
