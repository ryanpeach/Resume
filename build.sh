#!/bin/bash

# Script to build PDF and MD from LaTeX resume
# Exit on any error
set -e

build_resume() {
    local BASENAME="$1"
    echo "Building PDF: ${BASENAME}.tex..."
    pdflatex -interaction=nonstopmode "${BASENAME}.tex"
    pdflatex -interaction=nonstopmode "${BASENAME}.tex"
    rm -f "${BASENAME}.aux" "${BASENAME}.log" "${BASENAME}.out"
}

build_resume "Ryan Peach - Complete Resume"
build_resume "Ryan Peach - Cloud Infrastructure"
