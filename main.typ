#import "template.typ": *

#show: bloodstained-template.with(
  title: "Bloodstained Fangs",
  subtitle: "A Solo Urban Fantasy Horror RPG",
  author: "Enrico Fasoli",
  version: "WIP 0.1",
  cover-image: "art/cover_art.jpg",
)

// Include all chapters in order
#include "src/1_intro.typ"
#include "src/2_setting_intro.typ"
#include "src/3_characters.typ"
#include "src/4_rules.typ"
#include "src/5_setting.typ"
#include "src/6_factions.typ"
#include "src/7_creatures.typ"
#include "src/8_tables.typ"
#include "src/9_outro.typ"
