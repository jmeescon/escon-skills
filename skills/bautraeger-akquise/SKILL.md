---
name: bautraeger-akquise
description: "Aktivieren, wenn Akquisematerialien für Bauträger erstellt werden sollen (Pitchpaket, Anschreiben, Kennzahlen, Kooperationsvorschläge). Trigger-Phrasen: 'Bauträger-Pitch', 'Akquisepaket Bauträger'."
metadata:
  version: 0.2.0
---

# Bauträger-Akquise

## Trigger

Trigger-Phrase: „Bauträger-Pitch [Zielgruppe]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Konversionsorientiertes Akquisepaket zur Mandatsgewinnung bei Bauträgern — ESCON positioniert sich als Vertriebspartner für Neubauprojekte. Ergebnis ist ein aufeinander abgestimmtes Paket aus Pitchdeck, Anschreiben und Kennzahlen-Onepager.

## Vorgehen

### Schritt 1 — Zielgruppe und Anlass klären

1. Konkreten Bauträger bzw. Bauträger-Typ und den Anlass bestimmen (Kaltakquise, Empfehlung, laufendes Projekt).
2. Angebotsschwerpunkt festlegen (Vertrieb kompletter Projekte, Einzelvertrieb, Vermarktungsberatung).
3. Offene Punkte per Multiple-Choice-Rückfrage klären, keine Annahmen treffen.

### Schritt 2 — Recherche und Bedarf ableiten

Öffentlich verfügbare Informationen zum Bauträger und seinen laufenden/geplanten Projekten recherchieren (Website, Portale, Presse). Daraus den Vertriebsbedarf ableiten. Keine unbelegten Behauptungen — nur Recherchiertes mit Quelle.

### Schritt 3 — Wertversprechen und Kooperationsvorschlag

ESCON-Leistung auf den Bedarf zuschneiden: Vertriebskraft, Vermarktung (Exposé, Lagetexte), Einwertung, Interessentennetz. Ein bis zwei konkrete Kooperationsmodelle formulieren.

### Schritt 4 — Kennzahlen-Onepager

Neutrale Leistungs- und Referenzkennzahlen aufbereiten (z. B. Vermarktungsleistung, Reichweite, Prozess) — ohne konkrete Mandanten-/Kundennamen oder vertrauliche Zahlen.

### Schritt 5 — Pitchdeck aufbauen (pptx)

Dramaturgie: Ausgangslage/Bedarf → Lösung durch ESCON → Leistungsumfang → Referenzen/Kennzahlen → Kooperationsmodell → nächster Schritt (Call to Action). ESCON CI.

### Schritt 6 — Anschreiben (docx)

Persönliches Anschreiben, das zum Pitch führt. Wird das Anschreiben als E-Mail versandt, gelten die E-Mail-Regeln (weder Grußformel noch Signatur im Entwurf).

### Schritt 7 — Ausgabe

pptx-Pitchdeck, docx-Anschreiben und Kennzahlen-Onepager in ESCON CI mit Versions-Footer, als abgestimmtes Paket.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Pitchdeck-Grundgerüst, Anschreiben-Vorlage, Onepager-Layout).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Argumentations-/Nutzenbausteine).

## Output

pptx-Pitchdeck plus Anschreiben (docx) plus Kennzahlen-Onepager in ESCON CI, jeweils mit Versions-Footer.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Keine konkreten Mandanten-/Kundennamen oder vertrauliche Zahlen
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
