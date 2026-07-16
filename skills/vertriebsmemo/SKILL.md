---
name: vertriebsmemo
description: "Aktivieren, wenn für ein neues Mandat ein internes Vertriebsmemo plus Klärungsbedarf-Liste erstellt werden soll. Trigger-Phrasen: 'Vertriebsmemo [Objekt]', 'Mandatsmemo', 'interne Bewertung'. Internes Strukturierungsdokument vor Marktstart."
metadata:
  version: 0.2.0
---

# Vertriebsmemo + Klärungsbedarf

## Trigger

Trigger-Phrase: „Vertriebsmemo [Objekt]"

Sobald der User diese Phrase oder eine eindeutige Variante nutzt, lädt Claude diesen Skill und arbeitet ausschließlich nach der hier hinterlegten Methodik.

## Zweck

Internes Briefing-Dokument für das Vertriebsteam mit identifiziertem Klärungsbedarf. Es strukturiert alle vorhandenen Projektinformationen zu einem operativen Vermarktungs-Briefing und macht offene Punkte sichtbar.

## Anlass

Das Memo entsteht zu zwei Anlässen — der Anlass steuert den Fokus, die Struktur bleibt gleich:

- **Akquisephase:** als Entscheidungsvorlage, ob das Mandat übernommen wird.
- **Marktstart:** als internes Kickoff-Briefing nach Mandatsübernahme, vor Vermarktungsbeginn.

Primärer Adressat ist das Vertriebsteam (operatives Briefing); die Handlungsempfehlung dient zugleich der Vertriebsleitung als Grundlage.

## Vorgehen

Die Schritte werden der Reihe nach abgearbeitet.

### Schritt 1 — Projektinformationen sichten und bündeln

Zuerst alle vorhandenen Informationen zum Projekt zusammentragen, je Angabe mit Herkunft:

- **Einwertung** (Wert, Methodik, Marktlage) — sofern vorhanden.
- **Objektunterlagen** des Eigentümers.
- **Eigentümer-/Verkäufergespräch** (Motivation, Zeitdruck, Preisvorstellung).
- **Eigene Markt- und Wettbewerbseinschätzung.**

### Schritt 2 — Vollständigkeit prüfen und Lücken erfassen

Prüfen, welche Angaben fehlen. Jede Lücke sofort als Punkt für die Klärungsbedarf-Liste (Schritt 5) notieren, statt sie zu überschreiben oder zu schätzen.

### Schritt 3 — Mandats- und Objektdaten aufbereiten

Eckdaten, Eigentümer, Auftragsart und Objektdaten kompakt und strukturiert darstellen.

### Schritt 4 — Vermarktungseinschätzung

Zielgruppe, Preisstrategie und erwartete Vermarktungsdauer einschätzen, jeweils kurz begründet und auf die Einwertung bzw. Marktlage gestützt.

### Schritt 5 — Risiken und Klärungsbedarf-Liste

Risiken benennen (rechtlich, baulich, Unterlagen-Lücken) und den Klärungsbedarf als **eigene, klar abgesetzte Liste** offener Punkte führen. Die Liste ist eine reine Punkteliste ohne feste Verantwortliche oder Fristen.

### Schritt 6 — Handlungsempfehlung

Klare Empfehlung und nächste Schritte formulieren. **Kein** formales Go/No-Go — die Empfehlung ist handlungsleitend, nicht als Abstimmungsvotum formuliert.

### Schritt 7 — docx erstellen

Ausgabe als docx in ESCON CI mit Versions-Footer. Vor Erstellung offene Punkte per Multiple-Choice klären.

## Templates

Liegen unter `./templates/`. Aktuell leer — folgt (Memo-Layout docx, Klärungsbedarf-Listenraster).

## Referenzen

Liegen unter `./references/`. Aktuell leer — folgt (Risiko-Checkliste, Preisstrategie-Raster).

## Output

docx in ESCON CI mit:

1. **Mandats-/Objektdaten** — Eckdaten, Eigentümer, Auftragsart.
2. **Vermarktungseinschätzung** — Zielgruppe, Preisstrategie, erwartete Vermarktungsdauer.
3. **Risiken** — rechtlich, baulich, Unterlagen-Lücken.
4. **Klärungsbedarf-Liste** — abgesetzte Liste offener Punkte.
5. **Handlungsempfehlung** — Empfehlung und nächste Schritte.
6. **Versions-Footer** — `v[N] · TT.MM.JJJJ HH:MM`.

## Konventionen für diesen Skill

- ESCON CI verbindlich (Obsidian #0A0A0A, Ember #E8621A, Sand Gold #C9A96E, Playfair Display Headlines, DM Sans 10,5pt Body)
- Korrekte deutsche Umlaute in allen Inhalten
- Versions-Footer in jedem docx/pptx/PDF: `v[N] · TT.MM.JJJJ HH:MM`
- Keine Emojis, Piktogramme oder Sonderzeichen wie Häkchen
- Bei E-Mail-Entwürfen weder Grußformel noch Signatur
- Vor Aufgabenbeginn so viele Multiple-Choice-Rückfragen, wie nötig
