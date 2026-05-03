#!/usr/bin/env bash
# Prüft, dass jeder Skill eine SKILL.md mit gültigem YAML-Frontmatter hat.

set -euo pipefail

SKILLS_DIR="$(dirname "$0")/skills"
ERRORS=0

for skill_dir in "$SKILLS_DIR"/*/; do
    skill_name="$(basename "$skill_dir")"
    skill_md="$skill_dir/SKILL.md"

    if [ ! -f "$skill_md" ]; then
        echo "FEHLT: $skill_name/SKILL.md"
        ERRORS=$((ERRORS+1))
        continue
    fi

    # Frontmatter-Block prüfen
    if ! head -1 "$skill_md" | grep -q '^---$'; then
        echo "KEIN FRONTMATTER: $skill_name/SKILL.md"
        ERRORS=$((ERRORS+1))
        continue
    fi

    # Pflichtfelder prüfen
    for field in name description "metadata:" "version:"; do
        if ! grep -q "$field" "$skill_md"; then
            echo "FELD FEHLT '$field': $skill_name/SKILL.md"
            ERRORS=$((ERRORS+1))
        fi
    done

    echo "OK: $skill_name"
done

if [ "$ERRORS" -gt 0 ]; then
    echo ""
    echo "$ERRORS Fehler gefunden."
    exit 1
fi

echo ""
echo "Alle Skills valide."
