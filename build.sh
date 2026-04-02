#!/usr/bin/env bash
# Build a scientific-looking PDF from paper.md using pandoc + LaTeX
# Requirements: pandoc, texlive-latex-recommended, texlive-latex-extra, texlive-fonts-recommended
#
# Install on Ubuntu/Debian:
#   sudo apt-get install -y pandoc texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-xetex
#
# Usage: ./build.sh

set -euo pipefail
cd "$(dirname "$0")"

BUILD_DIR="build"
OUTPUT="${BUILD_DIR}/quantum-limits-bitcoin.pdf"
mkdir -p "$BUILD_DIR"

# Check dependencies
for cmd in pandoc xelatex; do
    if ! command -v "$cmd" &>/dev/null; then
        echo "❌ Missing: $cmd"
        echo "Install with: sudo apt-get install -y pandoc texlive-xetex texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended"
        exit 1
    fi
done

echo "📄 Building $OUTPUT from paper.md ..."

pandoc paper.md \
    -o "$OUTPUT" \
    --pdf-engine=xelatex \
    -V documentclass=article \
    -V geometry:margin=1in \
    -V fontsize=11pt \
    -V linestretch=1.15 \
    -V mainfont="Latin Modern Roman" \
    -V monofont="Latin Modern Mono" \
    -V header-includes='\usepackage{titling}
\usepackage{abstract}
\usepackage{fancyhdr}
\usepackage{footmisc}
\usepackage{booktabs}
\usepackage{amsmath}
\usepackage{amssymb}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\small\textit{Fundamental Physical Limits on Quantum Computation}}
\fancyhead[R]{\small\textit{March 2026}}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\abstractnamefont}{\normalfont\bfseries}
\renewcommand{\abstracttextfont}{\normalfont\small}
\setlength{\droptitle}{-2em}
\pretitle{\begin{center}\Large\bfseries}
\posttitle{\end{center}\vskip 0.5em}' \
    --highlight-style=tango \
    --number-sections \
    --shift-heading-level-by=-1 \
    --toc \
    -V toc-depth=2 \
    -V secnumdepth=2 \
    2>&1

if [ -f "$OUTPUT" ]; then
    echo "✅ Built: $(pwd)/$OUTPUT ($(du -h "$OUTPUT" | cut -f1))"
    echo "   Open with: xdg-open $OUTPUT"
else
    echo "❌ Build failed"
    exit 1
fi
