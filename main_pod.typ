#import "@preview/markly:0.3.0"
#import "content.typ": bloodstained-fangs

#let bleed = 12pt

#let markly-context = markly.setup(
  // Paper size
  stock-width: 6in,
  stock-height: 9in,

  // Amount of bleed
  bleed: bleed,

  // Content size
  content-width: 5in,
  content-height: 8in,

  // Marks
  bleed-marks: true,
  cut-marks: true,
  registration-marks: false,
)

#bloodstained-fangs(markly-context)

