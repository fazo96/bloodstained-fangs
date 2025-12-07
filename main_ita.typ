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
  "ita",
  markly-context,
  "Un RPG solitario urban fantasy",
  "Un RPG solitario di vampiri, licantropi e streghe tra le ombre della notte",
  "Contenuti",
)
