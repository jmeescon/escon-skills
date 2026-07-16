---
name: hausbuch-aufbau
description: "Aktivieren, wenn für ein Bestandsobjekt ein Hausbuch (Stammdaten, Mieten, Bewirtschaftung, Historie) aufgebaut oder gepflegt werden soll. Trigger-Phrasen: 'Hausbuch [Objekt]', 'Hausbuch erstellen'."
metadata:
  version: 0.2.0
---

# Hausbuch-Aufbau

## Trigger

Trigger-Phrase: „Hausbuch [Objekt]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Vollständige, vermarktungsreife Objekt-Stammdokumentation für vermietete Mehrfamilienhäuser/Zinshäuser. Ergebnis ist ein rechenbarer Excel-Datenkern plus eine docx-Zusammenfassung in ESCON CI als Datengrundlage für Verkauf und Exposé.

## Datenschutz-Grundregel

Mieterdaten sind personenbezogen. In vermarktungsfähigen oder geteilten Dokumenten werden Mieter **anonymisiert** (Einheit „Whg 1", „Whg 2" statt Namen). Echte personenbezogene Daten gehören niemals in dieses öffentliche Repo — hier steht nur die Methodik.

## Vorgehen

### Schritt 1 — Objekt und Zweck erfassen

Objekt (MFH/Zinshaus) und Vermarktungsziel festlegen. Offene Punkte per Multiple-Choice-Rückfrage klären, keine Annahmen treffen.

### Schritt 2 — Daten strukturiert abfragen

Die Daten werden strukturiert beim User abgefragt, entlang der Blöcke in Schritt 3–6. Grundlage der Antworten sind die Objektunterlagen (Mietverträge, Nebenkostenabrechnungen, Sanierungsbelege). Fehlende Angaben gezielt nachfordern, bevor gerechnet wird.

### Schritt 3 — Stammdaten

Objektadresse, Baujahr, Grundstücks- und Wohnfläche, Anzahl Einheiten, Aufteilung (Wohnen/Gewerbe), Ausstattung, energetischer Zustand.

### Schritt 4 — Mieter- und Mietenliste (anonymisiert)

Je Einheit: Bezeichnung (Whg-Nr), Fläche, Ist-Miete (netto/kalt), Staffel-/Indexregelung, Vertragsbeginn/-laufzeit, Leerstand. Namen werden nicht geführt.

### Schritt 5 — Bewirtschaftung

Jahresnettomiete (Ist und Potenzial), nicht umlagefähige Bewirtschaftungskosten (Verwaltung, Instandhaltung, Mietausfallwagnis), Leerstandsquote.

### Schritt 6 — Historie und Sanierungsplan

Investitionshistorie (durchgeführte Maßnahmen mit Jahr) und Sanierungsplan (empfohlene/geplante Maßnahmen, grobe Kostenrahmen als Richtwerte kennzeichnen).

### Schritt 7 — Kennzahlen rechnen (Excel)

Im Excel-Datenkern automatisch: Jahresnettomiete, Kaufpreisfaktor, Brutto- und Nettorendite, Leerstandsquote, Miete je m². Konkrete Kostenannahmen als Annahme kennzeichnen.

### Schritt 8 — Ausgabe

Excel-Datenkern (rechenbar) plus docx-Zusammenfassung in ESCON CI mit Versions-Footer. Mieterliste in geteilten Fassungen anonymisiert.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Excel-Hausbuch-Raster, docx-Zusammenfassung).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Kennzahlen-Definitionen, Kostenansätze).

## Output

Excel (Datenkern) und docx (CI-Zusammenfassung) mit:

1. **Stammdaten** — Objekt, Fläche, Einheiten, Zustand.
2. **Mieter-/Mietenliste** — anonymisiert je Einheit.
3. **Mieteinnahmen** — Ist und Potenzial.
4. **Bewirtschaftungskosten** — nicht umlagefähig, Leerstand.
5. **Investitionshistorie und Sanierungsplan.**
6. **Kennzahlen** — Faktor, Rendite, Miete je m².
7. **Versions-Footer** — `v[N] · TT.MM.JJJJ HH:MM`.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Mieterdaten anonymisiert; keine personenbezogenen Daten im Repo
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
