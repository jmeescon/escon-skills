---
name: einwertung
description: Aktivieren, wenn der User eine Marktwert-Einwertung für ein Immobilienobjekt anfordert oder eine Kurz-Werteinschätzung benötigt. Trigger-Phrasen: 'Einwertung [Adresse]', 'Wie hoch ist der Wert von [Objekt]', 'Marktwert-Einschätzung'. Wichtigster Workflow des Maklerbetriebs.
metadata:
  version: 0.2.0
---

# Objekt-Einwertung

## Trigger

Trigger-Phrase: „Einwertung [Adresse]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Belastbare Marktwert-Einschätzung mit transparenter Methodik und Quellenlage. Ergebnis ist immer eine Wertspanne (Untergrenze / Realistisch / Obergrenze), nie eine Punktzahl ohne Bandbreite.

## Geltungsbereich

Der Skill deckt zwei Objektzweige ab. Der Zweig bestimmt die Verfahrensgewichtung in Schritt 4:

- **Zweig A — Eigentumswohnung (ETW):** Bestand oder Neubau, eigengenutzt oder vermietet.
- **Zweig B — Grundstück / Bauträger:** unbebaute Grundstücke, Entwicklungsflächen, Bauträger-Projekte.

Andere Objektarten (MFH, EFH/ZFH) werden nach der gleichen Logik behandelt, aber der Skill fragt vor Beginn ab, welchem Zweig das Objekt am nächsten kommt.

## Vorgehen

Die Schritte werden strikt der Reihe nach abgearbeitet. Es wird nicht gerechnet, bevor der Pflicht-Input aus Schritt 2 vollständig ist.

### Schritt 1 — Auftrag und Objektzweig klären

1. Objektzweig bestimmen: ETW (Zweig A) oder Grundstück/Bauträger (Zweig B).
2. Zweck der Einwertung erfragen (Verkauf, Ankauf, Beleihungsanhalt, interne Kalkulation) — der Zweck steuert später die Gewichtung der Szenarien in der Wertspanne.
3. Offene Punkte per Multiple-Choice-Rückfrage klären, keine Annahmen treffen.

### Schritt 2 — Objektdaten aufnehmen und Vollständigkeit prüfen

Pflicht-Input. Ohne diese Angaben wird nicht gerechnet — fehlende Felder werden gezielt per Multiple-Choice nachgefordert:

- **Adresse + Lage:** genaue Adresse, Mikro- und Makrolage.
- **Fläche + Baujahr:** Wohn- bzw. Grundstücksfläche, Baujahr, letzte Modernisierung.
- **Zustand + Ausstattung:** Objektzustand, Ausstattungsniveau, erkennbarer Sanierungsstau.
- **Volumen:** Objektumfang — bei ETW Anzahl/Größe der Einheit, bei Grundstück/Bauträger das realisierbare Bauvolumen.
- **Miete / Baurecht:** bei ETW Ist- und Marktmiete (sofern vermietet); bei Grundstück/Bauträger Baurecht, GFZ/GRZ und Bebaubarkeit.

Erst wenn dieser Block steht, geht es weiter.

### Schritt 3 — Markt- und Vergleichsdaten erheben

Drei Quellen, jede mit Quellenvermerk und Datum dokumentiert. Vergleichsobjekte werden in der Region oder in vergleichbaren Lagen gesucht:

1. **Eigene ESCON-Objekte** als Referenz — vergleichbare Lage, Ausstattung, Größe. Höchste Gewichtung, da tatsächliche Abschluss- bzw. Erfahrungswerte.
2. **Gutachterausschuss / BORIS** — Bodenrichtwert, Kaufpreissammlung, amtlicher Marktbericht.
3. **Portale (Angebotspreise)** — ImmoScout24, Immowelt u. a. Immer klar als Angebots-, nicht als Abschlusspreise kennzeichnen (Abschlag berücksichtigen).

### Schritt 4 — Verfahren rechnen (Methoden-Mix)

Es wird immer im Methoden-Mix gerechnet, die Gewichtung richtet sich nach dem Zweig:

**Zweig A — Eigentumswohnung:**
- **Vergleichswert (dominiert):** €/m² aus den Vergleichsobjekten, angepasst um Lage, Zustand, Ausstattung und Baujahr.
- **Ertragswert (nur bei vermieteter ETW, zur Kontrolle):** aus Ist-/Marktmiete und marktüblichem Faktor.
- **Sachwert:** nachrangig, nur zur groben Plausibilisierung.

**Zweig B — Grundstück / Bauträger:**
- **Ausnutzbarkeit führt:** Wert aus Baurecht/GFZ und ausnutzbarer Fläche, gerechnet als € pro m² BGF bzw. realisierbare Wohnfläche.
- **Vergleichswerte:** vergleichbare Grundstücks-/Bauträgerverkäufe.
- **Allgemeine Erscheinung und Ausstattung** des Umfelds/der geplanten Realisierung.
- **Besonders die Lage** — bei Grundstücken wertbestimmend, überproportional gewichtet.
- Bodenrichtwert (BORIS) als zusätzliche Absicherung nach unten.

### Schritt 5 — Schlusswert gewichten

Gewichteten realistischen Schlusswert aus den Verfahrensergebnissen bilden. Die gewählte Gewichtung wird pro Objekt kurz begründet (welches Verfahren warum das Hauptgewicht trägt).

### Schritt 6 — Wertspanne bilden

Die Spanne entsteht aus zwei Logiken zusammen:

- **Verfahrens-Streuung:** niedrigstes bis höchstes Verfahrensergebnis.
- **Szenarien:** Untergrenze = schneller Verkauf, Realistisch = Marktwert, Obergrenze = optimale Vermarktung.

Beide Logiken werden zusammengeführt; der realistische Wert steht prominent, Unter- und Obergrenze rahmen ihn. Die Spanne wird auf die Vergleichsobjekte zurückgeführt.

### Schritt 7 — Annahmen und Grenzen dokumentieren

Alle wertrelevanten Annahmen offenlegen (angesetzte Miete, unterstellter Zustand, angenommenes Baurecht) und Unsicherheiten benennen. Fehlende Daten, die den Wert bewegen würden, werden als Vorbehalt ausgewiesen.

### Schritt 8 — PDF-Kurzgutachten erstellen

Ausgabe als mehrseitiges PDF in ESCON CI (siehe Output). Vor Erstellung offene Punkte per Multiple-Choice klären.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Datenaufnahme-Checkliste, PDF-Kurzgutachten-Layout).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Quellen-/Faktoren-Tabellen).

## Output

PDF-Kurzgutachten in ESCON CI mit folgender Struktur:

1. **Titelblatt** — Objekt, Adresse, Zweck, Datum.
2. **Wertspanne** — Untergrenze / Realistisch / Obergrenze, realistischer Wert prominent.
3. **Objektdaten** — Pflicht-Input aus Schritt 2 als Übersicht.
4. **Methoden-Mix** — angewandte Verfahren, Ergebnisse je Verfahren, gewählte Gewichtung mit Begründung.
5. **Vergleichs- und Marktdaten** — herangezogene Referenzen mit Quelle und Datum.
6. **Annahmen und Grenzen** — Vorbehalte, Unsicherheiten.
7. **Versions-Footer** — `v[N] · TT.MM.JJJJ HH:MM`.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
