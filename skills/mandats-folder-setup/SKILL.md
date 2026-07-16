---
name: mandats-folder-setup
description: "Aktivieren, wenn für ein neues Vertriebsmandat eine standardisierte Folder-Struktur in Google Drive angelegt werden soll. Trigger-Phrasen: 'Folder-Setup [Objekt]', 'Mandatsstruktur', 'Ordnerstruktur Mandat'."
metadata:
  version: 0.2.0
---

# Mandats-Folder-Setup

## Trigger

Trigger-Phrase: „Folder-Setup [Objekt]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Konsistente, durchsuchbare Ordnerstruktur für jedes Mandat von Beginn an — direkt in Google Drive angelegt. Die Struktur ist für alle Mandate identisch, sodass jede Datei einen festen, auffindbaren Platz hat und die übrigen Skills (Einwertung, Exposé, Lagetexte, Vertriebsmemo) ihre Ergebnisse gezielt ablegen können.

## Grundregel: nicht-destruktiv

**Es wird niemals eine bestehende Struktur überschrieben.** Das Setup läuft als Kopie bzw. in einer Testumgebung: Bestehende Ordner und Dateien bleiben unangetastet. Vor jedem Anlegen wird geprüft, ob am Zielort bereits etwas existiert; im Zweifel wird ein neuer, klar benannter Zielordner verwendet, statt vorhandene Inhalte zu verändern oder zu löschen.

## Vorgehen

### Schritt 1 — Mandat identifizieren und Ordnernamen festlegen

1. Objekt/Mandat bestimmen und den obersten Ordnernamen bilden: `[Ort]_[Strasse-Hausnr]_[Objektart]` (z. B. `Nauen_Musterstr-1_ETW`).
2. Ordnernamen in ASCII halten (keine Umlaute, kein ß) und **keine** Personennamen verwenden (Mandantenschutz).
3. Offene Punkte per Multiple-Choice-Rückfrage klären.

### Schritt 2 — Zielort prüfen (Sicherheits-Check)

1. Ablageort in Google Drive bestimmen.
2. Prüfen, ob dort bereits ein gleichnamiger Ordner existiert.
3. Existiert bereits etwas: **nicht überschreiben** — stattdessen als Kopie/Testumgebung mit eindeutig unterscheidbarem Namen anlegen und den User darauf hinweisen.

### Schritt 3 — Standardstruktur anlegen

Die folgende Struktur direkt in Google Drive anlegen (Reihenfolge über Nummern-Präfixe):

```
[Ort]_[Strasse-Hausnr]_[Objektart]/
  00_Mandat/                       (Maklerauftrag, Vollmacht, Vertriebsmemo, Mandatsdaten)
  01_Objektunterlagen/
    Grundbuch_und_Recht/           (Grundbuchauszug, Teilungserklaerung, Baulasten)
    Plaene_und_Grundrisse/
    Energieausweis/
    Technik_und_Kosten/            (Wohngeld, Nebenkosten, Sanierungen)
  02_Einwertung_und_Preis/         (Einwertung, Vergleichsobjekte, Preisstrategie)
  03_Fotos_und_Medien/             (Fotos, Video, 360-Touren, Drohne)
  04_Vermarktung/                  (Expose, Lagetexte, Portal-Listings, Anzeigen)
  05_Interessenten/                (Anfragen, Besichtigungen, Korrespondenz)
  06_Angebote_und_Verhandlung/     (Kaufangebote, Reservierungen)
  07_Vertrag_und_Notar/            (Kaufvertragsentwurf, Notartermin, Abwicklung)
  08_Abschluss_und_Provision/      (Uebergabeprotokoll, Provisionsabrechnung, Nachbetreuung)
```

### Schritt 4 — Anschluss an die übrigen Skills

Feste Ablageorte, damit die anderen Skills konsistent einzahlen:

- **Einwertung** → `02_Einwertung_und_Preis`
- **Exposé, Lagetexte** → `04_Vermarktung`
- **Vertriebsmemo** → `00_Mandat`
- **Objektunterlagen/Fotos** → `01_Objektunterlagen` bzw. `03_Fotos_und_Medien`

### Schritt 5 — Bestätigen und ausgeben

Nach dem Anlegen: den erstellten Ordnerbaum bestätigen, den Google-Drive-Link nennen und darauf hinweisen, dass keine bestehende Struktur verändert wurde.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Ordnerbaum als wiederverwendbare Vorlage).

## Referenzen

Liegen unter `./references/`. Aktuell leer.

## Output

Angelegte Ordnerstruktur in Google Drive plus Ordner-Plan als Markdown-Liste und Link zum obersten Mandatsordner. Bestätigung, dass nicht-destruktiv (als Kopie/Testumgebung) gearbeitet wurde.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Ordner- und Pfadnamen in ASCII (keine Umlaute, kein ß); Inhalte selbstverständlich mit korrekten deutschen Umlauten
- Keine Personennamen in Ordnernamen (Mandantenschutz)
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
