#import "template.typ": *

#show: bloodstained-template.with(
  title: "Bloodstained Fangs",
  subtitle: "A Solo Urban Fantasy Horror RPG",
  author: "Enrico Fasoli",
  version: "Beta RC3",
  cover-image: "art/cover_art.webp",
)

// Include all chapters in order
#include "src/1_intro.typ"

#page(
  foreground: image("art/detective.webp", width: 100%, height: 100%, fit: "cover"),
)[]

#include "src/2_setting_intro.typ"

#page(
  foreground: image("art/soul_vampire.webp", width: 100%, height: 100%, fit: "cover"),
)[]

#include "src/3_characters.typ"

#page(
  foreground: image("art/merc_alley.webp", width: 100%, height: 100%, fit: "cover"),
)[[]]

#include "src/4_rules.typ"

#page(
  foreground: image("art/man_roof.webp", width: 100%, height: 100%, fit: "cover"),
)[[]]

#include "src/5_setting.typ"

#page(
  foreground: image("art/mob_money.webp", width: 100%, height: 100%, fit: "cover"),
)[[]]

#include "src/6_factions.typ"

#page(
  foreground: image("art/knight_priest.webp", width: 100%, height: 100%, fit: "cover"),
)[[]]

#include "src/7_creatures.typ"

#page(
  foreground: image("art/police_car.webp", width: 100%, height: 100%, fit: "cover"),
)[[]]

#include "src/8_tables.typ"
#include "src/9_outro.typ"
