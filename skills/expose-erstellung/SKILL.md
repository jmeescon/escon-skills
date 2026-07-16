---
name: expose-erstellung
description: "Aktivieren, wenn ein Verkaufs- oder Kapitalanlage-Expose erstellt werden soll. Trigger-Phrasen: 'Expose für [Objekt]', 'Verkaufsexposé', 'Bitte ein Exposé erstellen'. Standard-Vertriebsdokument für Neubau- und Bestandsobjekte."
metadata:
  version: 0.2.0
---

# Exposé-Erstellung

## Trigger

Trigger-Phrase: „Exposé für [Objekt]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Marktreifes Verkaufsexposé für Kaufinteressenten und Kapitalanleger. Die Texte werden im Dialog mit dem User verfasst, die Objektunterlagen und -daten kommen aus den Quellen in Schritt 2. Ergebnis ist ein CI-konformes Dokument in zwei Stufen: bearbeitbarer docx-Arbeitsstand und finales PDF.

## Geltungsbereich

Der Skill bedient drei Zielgruppen. Die Zielgruppe steuert Tonalität und Schwerpunkt (siehe Schritt 2 und 4):

- **Eigennutzer-Kaufinteressenten:** emotional-einladende, wohnorientierte Ansprache.
- **Kapitalanleger:** nüchtern-zahlenorientiert, Fokus auf Mietertrag, Rendite und Wertentwicklung.
- **Bauträger-Neubauprojekte:** ganze Projekte oder mehrere Einheiten, häufig vor Fertigstellung.

## Vorgehen

Die Schritte werden der Reihe nach abgearbeitet. Kein finales PDF, bevor Pflichtangaben (Schritt 3) und interne Kontrolle (Schritt 7) bestanden sind.

### Schritt 1 — Objektdaten und Unterlagen sammeln

Zuerst Inhalte aus allen verfügbaren Quellen zusammentragen, jede Angabe mit Herkunft:

- **Texte** werden im Dialog mit dem User erarbeitet (Objekt-Highlights, Besonderheiten, Ansprache).
- **Objektunterlagen/-daten** primär über ImmoScout24 (Eckdaten, Fotos, Grundrisse), soweit dort gepflegt.
- **Einwertung** (falls vorhanden): Objektdaten, Wert/Preisrahmen, Lageeinschätzung übernehmen.
- **Eigentümerunterlagen:** Grundrisse, Energieausweis, Teilungserklärung, Mietverträge, Fotos.
- **Eigene Vor-Ort-Aufnahme:** Fotos, Aufmaß, Zustandsbeschreibung.
- **Lage-/Umfeldrecherche:** Infrastruktur, Anbindung, Umfeld (ggf. Skill `lagetexte`).

### Schritt 2 — Zielgruppe und Anlass klären

Auf Basis der Daten festlegen, **für wen** und **wozu** das Exposé entsteht — das steuert Tonalität und Fokus des gesamten Dokuments:

1. Zielgruppe bestimmen: Eigennutzer, Kapitalanleger oder Bauträger-Neubauprojekt.
2. Anlass/Kanal klären (Direktansprache, Portal, Mailing) und ob ein docx-Arbeitsstand vor dem PDF gewünscht ist.
3. Offene Punkte per Multiple-Choice-Rückfrage klären, keine Annahmen treffen.

### Schritt 3 — Vollständigkeit und Pflichtangaben prüfen

Vor dem Texten prüfen, ob alle Pflichtangaben vorliegen. Fehlendes gezielt per Multiple-Choice nachfordern — insbesondere der **Energieausweis** ist gesetzlich verpflichtend und ohne ihn wird kein Exposé veröffentlicht:

- Energieausweis-Pflichtangaben (Energieträger, Kennwert, Klasse, Baujahr laut Ausweis)
- Courtage/Provision (Höhe und Fälligkeit)
- Anbieterkennzeichnung (ESCON, Kontakt)
- Kaufpreis bzw. Preisrahmen, bei vermieteten Objekten Mietdaten

### Schritt 4 — Texte verfassen (zielgruppengerecht)

Die Texte in der Tonalität der Zielgruppe aus Schritt 2 schreiben — Eigennutzer emotional-einladend, Kapitalanleger nüchtern-zahlenorientiert, Bauträgerprojekte projekt-/potenzialorientiert. Gliederung:

1. **Titel + Objektbeschreibung** — Aufmacher, Kurzbeschreibung, Highlights.
2. **Lage + Umfeld** — Makro-/Mikrolage, Infrastruktur, Anbindung.
3. **Ausstattung + Zustand** — Ausstattungsmerkmale, Zustand, Modernisierungen.
4. **Wirtschaftlichkeit** — Kaufpreis, bei Anlageobjekten Mietertrag/Rendite; plus Bildteil, Grundrisse und Energieausweis-Pflichtangaben.

### Schritt 5 — Pflicht- und Rechtsangaben einsetzen

Die rechtssichernden Bausteine fest einbauen: Energieausweis-Pflichtangaben, Courtage, Anbieterkennzeichnung/Impressum sowie Haftungs- und Aktualitätsvorbehalt (Angaben ohne Gewähr, Zwischenverkauf vorbehalten, Stand/Datum).

### Schritt 6 — docx-Arbeitsstand in ESCON CI erstellen

Bearbeitbares docx in ESCON CI mit Bildteil, Grundrissen und Versions-Footer erzeugen — als Arbeits- und Freigabestand.

### Schritt 7 — Interne Kontrolle

Interne Kontrolle durch ESCON: Fakten, Pflichtangaben (insbesondere Energieausweis und Courtage) und CI-Konformität prüfen. Eine gesonderte Eigentümer-Freigabe ist nicht vorgesehen. Erst nach bestandener Kontrolle zum finalen PDF.

### Schritt 8 — Finales PDF ausliefern

Freigegebenen Stand als finales PDF in ESCON CI ausgeben (docx bleibt als bearbeitbarer Stand erhalten). Versions-Footer aktualisieren.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Exposé-Layout docx/PDF, Pflichtangaben-Baustein).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Tonalitäts-Leitfaden je Zielgruppe, Pflichtangaben-Checkliste).

## Output

docx (bearbeitbarer Arbeitsstand) und PDF (finale Ausgabe) in ESCON CI mit:

1. **Titelblatt** — Objekt, Aufmacherbild, Kurzbeschreibung.
2. **Objektbeschreibung** — Highlights, Beschreibung.
3. **Lage + Umfeld** — Makro-/Mikrolage, Infrastruktur, Anbindung.
4. **Ausstattung + Zustand** — Merkmale, Zustand, Modernisierungen.
5. **Wirtschaftlichkeit** — Kaufpreis, bei Anlage Mietertrag/Rendite.
6. **Bildteil + Grundrisse** — Fotos, Grundrisse.
7. **Energieausweis-Pflichtangaben** — Energieträger, Kennwert, Klasse, Baujahr.
8. **Anbieter + Rechtsangaben** — ESCON-Kennzeichnung, Courtage, Haftungs-/Aktualitätsvorbehalt.
9. **Versions-Footer** — `v[N] · TT.MM.JJJJ HH:MM`.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
