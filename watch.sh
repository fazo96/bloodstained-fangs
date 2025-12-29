#!/usr/bin/env bash

# Exit on error
set -e

if [ $1 == "pod" ]; then
  typst watch --format pdf --font-path ./fonts main_pod.typ main_pod.pdf
elif [ $1 == "cover_ita" ]; then
  typst watch --format pdf --font-path ./fonts cover_ita.typ cover_ita.pdf
elif [ $1 == "cover_eng" ]; then
  typst watch --format pdf --font-path ./fonts cover_eng.typ cover_eng.pdf
elif [ $1 == "pod_ita" ]; then
  typst watch --format pdf --font-path ./fonts main_pod_ita.typ main_pod_ita.pdf
elif [ $1 == "ita" ]; then
  typst watch --format pdf --font-path ./fonts main_ita.typ main_ita.pdf
elif [ $1 == "banner" ]; then
  typst watch --format png --ppi 144 --font-path ./fonts banner.typ banner.png
elif [ $1 == "cover_itch" ]; then
  typst watch --format png --ppi 144 --font-path ./fonts cover_itch.typ cover_itch.png
elif [ $1 == "micro" ]; then
  typst watch --format pdf --font-path ./fonts micro.typ micro.pdf
else
  typst watch --format pdf --font-path ./fonts main.typ main.pdf
fi