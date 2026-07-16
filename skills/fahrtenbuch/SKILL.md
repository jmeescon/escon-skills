---
name: fahrtenbuch
description: "Aktivieren, wenn ein finanzamtstaugliches Fahrtenbuch aus vorliegenden Belegen wahrheitsgemäß fortgeschrieben oder geführt werden soll. Trigger-Phrasen: 'Fahrtenbuch fortschreiben', 'Fahrtenbuch fuellen', 'Fahrtenbuch-Eingabemaske'."
metadata:
  version: 0.1.0
---

# Fahrtenbuch

## Trigger

Trigger-Phrase: „Fahrtenbuch fortschreiben"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Ein ordnungsgemäßes, finanzamtstaugliches Fahrtenbuch aus **tatsächlichen** Fahrten und **vorliegenden** Belegen führen bzw. fortschreiben — lückenlos, zeitnah und in sich konsistent, sodass es einer Prüfung standhält, weil es korrekt ist.

## Grundregel: Wahrhaftigkeit (nicht verhandelbar)

Ein Fahrtenbuch muss zeitnah und wahrheitsgemäß geführt sein. Dieser Skill erfasst und strukturiert **nur reale Fahrten und reale Belege**. Er erfindet **keine** Fahrten, Kilometer, Tankstopps oder sonstigen Belege, um einen Zielkilometerstand zu erreichen oder eine Prüfung zu bestehen. Ergibt sich aus den echten Daten eine Lücke, wird die Lücke ausgewiesen — nicht gefüllt. Kommt am Ende ein anderer Kilometerstand heraus als erwartet, ist das die richtige Zahl.

## Datengrundlage (Belege und Fixpunkte)

„Fixpunkte" sind **reale, datierte Ankerpunkte**, gegen die die Einträge geprüft werden — zur Fehlererkennung, nicht zur Konstruktion:

- **Tankbelege:** Datum, Ort, Liter, wenn notiert der Kilometerstand.
- **Werkstatt-/TÜV-/Inspektionsrechnungen:** enthalten einen datierten Kilometerstand — starke Anker.
- **Termine/Kalender:** belegen Orte und Zeiten tatsächlicher Fahrten.
- **Weitere datierte Ortsnachweise** (z. B. Maut, Parkbelege).

## Spaltenlogik (Bestandsformat)

`Startdatum · Startzeit · Startende (Ankunft) · Startort · Zielort · Grund · Fahrzeit · KM Start · Strecke (Kategorie: geschäftlich / Wohnung-Arbeit / privat) · KM Ende · Fahrer · Kennzeichen · Zwischenziel · Tanken · Liter`

Fortschreibung: `KM Ende = KM Start + Strecke`; die nächste Fahrt beginnt beim vorherigen `KM Ende` (lückenlos).

## Vorgehen

### Schritt 1 — Ausgangsstand feststellen

Letzten belegten Kilometerstand und Fahrzeug/Kennzeichen aufnehmen (beim Bestandsbuch der letzte gefüllte `KM Ende`). Ab hier wird fortgeschrieben.

### Schritt 2 — Belege und Fixpunkte erfassen (Eingabemaske)

Vorliegende Belege über die Eingabemaske aufnehmen: Tankbelege, Werkstatt-/Inspektionsrechnungen (mit Kilometerstand), Termine. Jeder Beleg mit Datum und, wo vorhanden, Kilometerstand.

### Schritt 3 — Tatsächliche Fahrten eintragen

Reale Fahrten erfassen: Datum, Zeiten, Start-/Zielort, Grund, Strecke (aus der tatsächlich gefahrenen Route), Kategorie (geschäftlich / Wohnung-Arbeit / privat), ggf. Zwischenziel und Tankangabe.

### Schritt 4 — Lückenlose Fortschreibung

`KM Ende = KM Start + Strecke`; jede Folgefahrt startet beim vorherigen Endstand. Keine Sprünge ohne belegte Fahrt.

### Schritt 5 — Konsistenz- und Querprüfung

Die Einträge müssen durch die realen Fixpunkte laufen: Zeigt ein Beleg (z. B. Werkstattrechnung) am Datum X einen Kilometerstand Y, muss das Fahrtenbuch an diesem Datum bei Y liegen. Abweichungen werden als **Lücke oder Fehler markiert** und dem User zur Klärung aus seinen echten Unterlagen vorgelegt — nicht automatisch glattgerechnet.

### Schritt 6 — Kategorisierung und Auswertung

Strecken den Kategorien zuordnen und je Kategorie summieren (geschäftlich / Wohnung-Arbeit / privat) für die steuerliche Auswertung.

### Schritt 7 — Ausgabe

Fortgeschriebenes Fahrtenbuch im bestehenden xlsx-Format ausgeben. Offene Lücken bleiben sichtbar markiert, bis der User sie aus echten Belegen schließt.

## Templates

Liegen unter `./templates/`. Enthält die Beleg-/Fahrten-Eingabemaske.

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Kategorien-Definitionen, Anforderungen an ein ordnungsgemäßes Fahrtenbuch).

## Output

Fortgeschriebenes Fahrtenbuch (xlsx) im Bestandsformat mit lückenloser KM-Fortschreibung, Kategoriesummen und sichtbar markierten offenen Lücken.

## Konventionen für diesen Skill

- Nur reale Fahrten und reale Belege; keine erfundenen Einträge zum Erreichen eines Zielkilometerstands
- Fixpunkte sind reale, datierte Anker zur Fehlererkennung, nicht zur Konstruktion
- Personenbezogene Daten (Namen in Zwischenzielen etc.) bleiben in privaten Dateien, nicht im Repo
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
