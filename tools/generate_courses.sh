#!/usr/bin/env bash
set -euo pipefail

COURSE_LIST_FILE="${1:-courses.list}"
TEMPLATE="docs/courses/_templates/COURSE-TEMPLATE.md"

while IFS='|' read -r RELPATH TITLE PILLAR; do
  [ -z "$RELPATH" ] && continue
  DEST="docs/${RELPATH}"
  mkdir -p "$DEST/lectures" "$DEST/problems" "$DEST/projects" "$DEST/portfolio"
  SYL="$DEST/syllabus.md"
  if [ ! -f "$SYL" ]; then
    sed \
      -e "s/{{Course Title}}/${TITLE}/g" \
      -e "s/{{Math & Logic | Science & Engineering | Business & Economics | Humanities & Civic | Life\/Creativity\/Meta | Capstone}}/${PILLAR}/g" \
      -e "s/{{One paragraph: why this matters and where it’s used.}}/This course builds core competence for analysis and decision-making across engineering, business, and civic contexts./g" \
      -e "s/{{Actionable outcome}}/Apply core concepts to solve authentic problems/g" \
      -e "s/{{...}}/Analyze and communicate results effectively/g" \
      -e "s/{{Module 1}}/Foundations/g" \
      -e "s/{{Module 2}}/Core Techniques/g" \
      -e "s/{{Module 3}}/Applications/g" \
      -e "s/{{Module 4}}/Modeling & Interpretation/g" \
      -e "s/{{Module 5}}/Extensions/g" \
      -e "s/{{case\/mini-capstone}}/A small project tying theory to a real scenario/g" \
      -e "s/{{book(s)}}/A standard, high-quality text for the field/g" \
      -e "s/{{videos\/articles}}/Curated lectures and readings/g" \
      -e "s/{{Python\/Jupyter, MATLAB\/Octave, Excel, etc.}}/Python (Jupyter), spreadsheets, math tools/g" \
      -e "s/{{how many, nature}}/5–8 sets; practice to fluency/g" \
      -e "s/{{brief}}/Short applied project/case/g" \
      -e "s/{{cross-pillar prompt}}/Reflect on links to adjacent pillars/g" \
      -e "s/{{e.g., 50\/30\/20}}/50% problem sets, 30% project/case, 20% integration/g" \
      -e "s/{{what artifacts to save and where}}/Save final PDF(s), code/notebooks, and slides in this course's portfolio folder/g" \
      "$TEMPLATE" > "$SYL"
  fi
done < "$COURSE_LIST_FILE"

echo "Done. Stubs generated from $COURSE_LIST_FILE"
