#!/bin/bash

# Exit on error
set -e

if [ $1 == "pod" ]; then
  typst watch --format pdf --font-path ./fonts main_pod.typ main_pod.pdf
elif [ $1 == "ita" ]; then
  typst watch --format pdf --font-path ./fonts main_ita.typ main_ita.pdf
else
  typst watch --format pdf --font-path ./fonts main.typ main.pdf
fi