#!/bin/bash

# Script to build PDF and MD from LaTeX resume
# Exit on any error
set -e

# File name without extension
BASENAME="Ryan Peach - Complete Resume"

echo "Building PDF from LaTeX..."
# Compile LaTeX to PDF (run twice for proper references)
pdflatex -interaction=nonstopmode "${BASENAME}.tex"
pdflatex -interaction=nonstopmode "${BASENAME}.tex"

# Clean up auxiliary files
rm -f "${BASENAME}.aux" "${BASENAME}.log" "${BASENAME}.out"
