#import "@preview/markly:0.3.0"
#import "content.typ": bloodstained-fangs

#let markly-context = markly.setup(
  // Paper size
  stock-width: 6in,
  stock-height: 9in,

  // Amount of bleed
  bleed: 0pt,

  // Content size
  content-width: 6in,
  content-height: 9in,

  // Marks
  bleed-marks: false,
  cut-marks: false,
  registration-marks: false,
)

#bloodstained-fangs(
  "eng",
  markly-context,
  "A solo urban fantasy horror RPG",
  "A rules-light solo tabletop RPG of vampires, werewolves and witches stalking the night in the urban shadows",
  "Contents",
)
