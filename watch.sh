#!/bin/bash

# Exit on error
set -e

if [ $1 == "pod" ]; then
  typst watch --format pdf --font-path ./fonts main_pod.typ main_pod.pdf
else
  typst watch --format pdf --font-path ./fonts main.typ main.pdf
fi