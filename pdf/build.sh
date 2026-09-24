#!/usr/bin/env bash
# Convertit les CV HTML de ce dossier en PDF avec WeasyPrint.
# Usage : ./build.sh            -> tous les resume_*.html
#         ./build.sh resume_fr  -> un seul fichier
set -euo pipefail
cd "$(dirname "$0")"

if [ $# -gt 0 ]; then
  files=("${@/%.html/}")
else
  files=(resume_*.html)
  files=("${files[@]%.html}")
fi

for name in "${files[@]}"; do
  weasyprint "$name.html" "$name.pdf"
  pages=$(pdfinfo "$name.pdf" 2>/dev/null | awk '/^Pages:/ {print $2}')
  echo "$name.pdf (${pages:-?} page(s))"
done
