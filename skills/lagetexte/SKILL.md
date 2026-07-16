---
name: lagetexte
description: "Aktivieren, wenn SEO- und vertriebstaugliche Lagetexte für eine Stadt, einen Stadtteil oder einen Mikrostandort benötigt werden. Trigger-Phrasen: 'Lagetexte für [Ort]', 'Standorttext', 'Lage-Beschreibung'."
metadata:
  version: 0.2.0
---

# Lagetexte-Erstellung

## Trigger

Trigger-Phrase: „Lagetexte für [Ort]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Standardisierte, suchmaschinenoptimierte Lagebeschreibungen für Exposés und Projektwebsites — beide Kanäle gleichwertig. Ergebnis sind drei Texttiefen (Kurz / Mittel / Lang) aus einer gemeinsamen, faktengeprüften Recherchebasis.

## Geltungsbereich

Ein Lagetext deckt vier Lage-Ebenen ab (soweit für den Standort relevant):

- **Makrolage / Stadt** (z. B. Nauen, Region Havelland)
- **Stadtteil / Ortsteil**
- **Mikrostandort** (unmittelbares Umfeld, Straße/Quartier)
- **Regionaler Wirtschafts- und Entwicklungskontext** (Anbindung Berlin, Pendeln, Zukunftsperspektive)

## Vorgehen

Die Schritte werden der Reihe nach abgearbeitet. Es werden keine konkreten Zahlen (Entfernungen, Fahrzeiten) getextet, bevor sie in Schritt 3 belegt sind.

### Schritt 1 — Standort und Auftrag klären

1. Genauen Ort/Standort erfassen (Adresse oder Ortsteil) und klären, welche der vier Ebenen relevant sind.
2. Zweck bestätigen (Exposé-Baustein, Website/SEO oder beides) — steuert Länge und Keyword-Einsatz.
3. Offene Punkte per Multiple-Choice-Rückfrage klären, keine Annahmen treffen.

### Schritt 2 — Lage-Informationen recherchieren

Aus allen auffindbaren Quellen zusammentragen, je Angabe die Herkunft notieren. Recherche entlang der vier inhaltlichen Bausteine:

- **Verkehr & Anbindung** (ÖPNV, Autobahn, Bahn/Regionalexpress nach Berlin)
- **Nahversorgung & Einkauf**
- **Bildung & Betreuung** (Kita, Schule, Ärzte)
- **Freizeit, Kultur, Naherholung** (Natur, Wasser, Vereine)

Quellen: eigenes Ortswissen von ESCON (Region Havelland/Nauen), Web-Recherche (offizielle Stadt-/Gemeindeseiten, Karten), Recherche bei ImmoScout24, eine bestehende Einwertung zum Objekt sowie gezielte Rückfragen an den User zu Standort-Besonderheiten.

### Schritt 3 — Fakten prüfen und belegen

Faktentreue hat Vorrang vor Wohlklang:

- Konkrete Angaben (Entfernungen, Fahrzeiten, Anzahl von Einrichtungen) nur verwenden, wenn recherchiert und belegbar — mit Quelle und Stand.
- Ist eine Angabe nicht belegbar, **qualitativ** bleiben („gute Anbindung nach Berlin") statt eine Zahl zu schätzen oder zu erfinden.
- Nichts behaupten, was nicht belegt oder plausibel gesichert ist.

### Schritt 4 — SEO-Keywords ableiten

Keywords selbst ableiten und natürlich einbauen: Ortsname kombiniert mit Kaufabsicht-Begriffen (z. B. „Wohnung kaufen [Ort]", „Grundstück [Ort]", „Neubau [Region]") sowie den wertbildenden Lage-Merkmalen. Keine Keyword-Häufung — die Lesbarkeit bleibt führend.

### Schritt 5 — Drei Texttiefen schreiben

Aus derselben Recherchebasis drei gestaffelte Fassungen erstellen:

- **Kurz:** 1–2 Sätze, Teaser (z. B. für Objektkopf, Listing).
- **Mittel:** ein Absatz, Exposé-Standard.
- **Lang:** mehrere Absätze, Website/SEO — deckt alle vier Ebenen und Bausteine aus.

### Schritt 6 — Feinschliff und Kontrolle

Keywords natürlich, Ortsbezug klar, Tonalität hochwertig-nüchtern (ESCON CI). Abschließend gegen Schritt 3 prüfen: keine unbelegte Zahl im Text.

### Schritt 7 — Ausgabe

Markdown oder docx mit den drei Texttiefen, standardmäßig auf Deutsch (weitere Sprachen nur auf Anfrage). Bei docx Versions-Footer.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Lagetext-Raster Kurz/Mittel/Lang, Recherche-Checkliste je Baustein).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Quellenliste Region Havelland/Nauen).

## Output

Markdown- oder docx-Datei mit drei Texttiefen (Kurz/Mittel/Lang), standardmäßig Deutsch, weitere Sprachen auf Anfrage. Konkrete Angaben mit Quelle/Stand; bei docx Versions-Footer `v[N] · TT.MM.JJJJ HH:MM`.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
