# Repo auf GitHub anlegen — Schritt für Schritt (macOS)

Ziel: Das Verzeichnis `escon-skills/` aus diesem ZIP soll als Repository unter `https://github.com/jmeescon/escon-skills` veröffentlicht werden.

Sie haben zwei Wege. Der Browser-Weg ist beim ersten Mal langsamer, braucht dafür kein Vorwissen. Diese Anleitung ist auf macOS zugeschnitten.

---

## macOS-Vorbereitung (einmalig)

### Versteckte Dateien sichtbar machen

Im Finder beginnt `.gitignore` mit einem Punkt und ist deshalb standardmäßig unsichtbar. Mit der Tastenkombination `Cmd + Shift + .` (Punkt) blenden Sie versteckte Dateien ein und aus. Diese Tastenkombination funktioniert in jedem geöffneten Finder-Fenster.

### Browser-Empfehlung

Für den Drag-and-Drop-Upload eines Ordners in den Browser empfehle ich **Chrome** oder **Firefox**. Safari kann beim Ziehen ganzer Ordner gelegentlich nur die obersten Dateien übernehmen. Sollte Safari zicken, einfach in Chrome oder Firefox wechseln.

---

## Weg A — Browser, ohne Kommandozeile (empfohlen für den Einstieg)

### Schritt 1 — Repo anlegen

1. Browser öffnen, https://github.com aufrufen, eingeloggt als `jmeescon`
2. Oben rechts auf das Plus-Zeichen klicken → „New repository"
3. Eingaben:
   - **Repository name**: `escon-skills`
   - **Description**: `Wiederkehrende Workflows der ESCON GmbH als Skills für Claude`
   - **Public** auswählen
   - Bei „Initialize this repository with" alle Häkchen **leer lassen** (kein README, kein .gitignore, keine License)
4. Unten auf „Create repository"

Sie landen auf einer Seite mit dem Hinweis „Quick setup". Diese Seite kurz offen lassen.

### Schritt 2 — ZIP entpacken

1. `escon-skills.zip` im Finder per Doppelklick öffnen
2. macOS entpackt automatisch und legt den Ordner `escon-skills` direkt daneben ab (z.B. im Downloads-Ordner)
3. Den entpackten Ordner `escon-skills` öffnen
4. **Cmd + Shift + .** drücken, damit die `.gitignore` sichtbar wird

Sie sehen jetzt:
- README.md, CLAUDE.md, LICENSE, HOWTO_PUSH.md, validate-skills.sh
- .gitignore (durch versteckte Dateien sichtbar gemacht)
- skills/ (Ordner mit zehn Unterordnern)

### Schritt 3 — Dateien hochladen

1. Auf der GitHub-Seite Ihres neuen leeren Repos den Link „uploading an existing file" anklicken (im Quick-Setup-Bereich), alternativ direkt zu https://github.com/jmeescon/escon-skills/upload/main gehen
2. Im Finder den entpackten Ordner `escon-skills` geöffnet halten
3. **Inhalt** auswählen — `Cmd + A` markiert alles im Ordner. Wichtig: NICHT den Ordner selbst, sondern den Inhalt:
   - README.md, CLAUDE.md, LICENSE, .gitignore, HOWTO_PUSH.md, validate-skills.sh
   - der Ordner skills/
4. Diese Auswahl mit gedrückter Maustaste in das GitHub-Browserfenster ziehen — direkt auf die gestrichelte Upload-Fläche
5. Falls eine `.DS_Store`-Datei in der Liste auftaucht: das `x` daneben klickt sie aus dem Upload raus
6. Unterhalb der Datei-Vorschau bei „Commit changes":
   - Erste Zeile (Titel): `Initial commit – 10 Skills als Skelett`
   - „Commit directly to the main branch" ausgewählt lassen
7. Auf „Commit changes" klicken

GitHub zeigt nun alle Dateien im Repo. Fertig.

### Schritt 4 — Prüfen

Aufrufen: https://github.com/jmeescon/escon-skills

Sichtbar sein sollten:
- README.md (wird unter der Dateiliste als Übersicht angezeigt)
- skills/-Ordner mit zehn Unterverzeichnissen
- LICENSE, CLAUDE.md, HOWTO_PUSH.md, validate-skills.sh, .gitignore

---

## Weg B — Kommandozeile (für spätere Updates schneller)

Setzt voraus: Git ist auf Ihrem Mac installiert. Prüfen Sie das im Terminal (Programme → Dienstprogramme → Terminal) mit:

```bash
git --version
```

Falls die Antwort lautet „xcode-select: note: no developer tools were found": macOS bietet automatisch die Installation der Command Line Tools an. Bestätigen, warten, dann nochmal prüfen.

Anschließend Personal Access Token erzeugen: https://github.com/settings/tokens → „Generate new token (classic)" → Scope `repo` markieren → kopieren und sicher speichern (im 1Password-Tresor — der Token wird auf GitHub nur einmal angezeigt).

Dann im Terminal:

```bash
cd ~/Downloads/escon-skills
git init
git add .
git commit -m "Initial commit – 10 Skills als Skelett"
git branch -M main
git remote add origin https://github.com/jmeescon/escon-skills.git
git push -u origin main
```

Beim Push fragt Git nach Username (`jmeescon`) und Passwort. Statt Passwort den Personal Access Token einfügen.

---

## Was danach in Claude funktioniert

Sobald das Repo öffentlich live ist und Claude bei einem der zehn Trigger-Phrasen aufgerufen wird, klont Claude es so:

```bash
git clone https://github.com/jmeescon/escon-skills.git /home/claude/escon-skills
```

Dann liest Claude die passende `SKILL.md` und arbeitet nach der dort hinterlegten Methodik.

**Wichtig:** Solange die `## Vorgehen`-Abschnitte noch leer sind, kann Claude den jeweiligen Skill nicht produktiv anwenden. Wir füllen sie schrittweise — pro Skill eine eigene Session, in der Sie mir Ihre Methodik erklären und ich die SKILL.md final formuliere.

---

## Empfohlene Reihenfolge der Methodik-Befüllung

1. `einwertung` (Top-Priorität)
2. `expose-erstellung`
3. `vertriebsmemo`
4. `mandats-folder-setup`
5. `hausbuch-aufbau`
6. `bautraeger-akquise`
7. `lagetexte`
8. `nauen-immocloud-pflege`
9. `trade-recap`
10. `it-security-quartalscheck`
