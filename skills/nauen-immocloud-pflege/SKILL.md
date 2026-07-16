---
name: nauen-immocloud-pflege
description: "Aktivieren, wenn die Datenpflege des privaten Mietportfolios in Nauen über immocloud.de ansteht (Mieten, Nebenkosten, Stammdaten, Verträge, Mahnungen). Trigger-Phrasen: 'Nauen-Pflege', 'immocloud-Update'. Privatportfolio, NICHT ESCON."
metadata:
  version: 0.2.0
---

# Nauen-immocloud-Pflege

## Trigger

Trigger-Phrase: „Nauen-Pflege"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Abgrenzung

Dies betrifft das **private** Mietportfolio in Nauen außerhalb der ESCON-Systeme, gepflegt über immocloud.de — **nicht** ESCON-Mandate. Die beiden Sphären werden strikt getrennt gehalten.

## Zweck

Strukturierte, regelmäßige Pflege des privaten Mietportfolios, sodass Mieten, Nebenkosten, Stammdaten, Verträge und Mahnungen stets aktuell und nachvollziehbar sind.

## Datenschutz-Grundregel

Mieterdaten sind personenbezogen. Sie bleiben in immocloud.de bzw. in geschützten privaten Dateien. In geteilten Auszügen werden sie anonymisiert. Niemals gelangen echte personenbezogene Daten in dieses öffentliche Repo — hier steht nur die Methodik.

## Vorgehen

### Schritt 1 — Turnus und Umfang klären

Festlegen, welche Bereiche gepflegt werden (Mieten, Nebenkosten, Stammdaten, Verträge, Mahnungen) und für welchen Zeitraum.

### Schritt 2 — Ist-Stand in immocloud sichten

Aktuellen Datenstand je Bereich sichten und mit den vorliegenden Belegen abgleichen.

### Schritt 3 — Pflegeschritte je Bereich abarbeiten

- **Mieten:** Sollstellung, Zahlungseingänge, Rückstände prüfen.
- **Nebenkosten:** Vorauszahlungen und Abrechnungsstand aktualisieren.
- **Stammdaten:** Objekt-, Einheiten- und Mieterdaten auf Aktualität prüfen.
- **Verträge:** Laufzeiten, Index-/Staffelanpassungen, Kündigungen erfassen.
- **Mahnungen:** offene Posten prüfen, Mahnlauf vorbereiten.

### Schritt 4 — Datenextrakt erzeugen

Datenextrakt als Excel- oder PDF-Vorlage erstellen (in geteilten Fassungen anonymisiert).

### Schritt 5 — Checkliste dokumentieren

Durchgeführte Pflegeschritte abhaken, offene Punkte und Fristen festhalten.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Pflege-Checkliste, Datenextrakt-Vorlage).

## Referenzen

Liegen unter `./references/`. Aktuell leer.

## Output

Checkliste der Pflegeschritte plus Datenextrakt-Vorlage (Excel oder PDF), personenbezogene Daten anonymisiert.

## Konventionen für diesen Skill

- Privatportfolio, strikt getrennt von ESCON-Mandaten
- Mieterdaten anonymisiert; keine personenbezogenen Daten im Repo
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
