#import "@preview/markly:0.3.0"

// From Amazon KDP:
// they cut 0,125” from the edges
// A 15,24 x 22,86 cm (6” x 9”) book needs to be 15,56 x 23,50 cm (6,125” x 9,25”)

#let markly-context = markly.setup(
  // Paper size
  stock-width: 6.125in,
  stock-height: 9.25in,

  // Amount of bleed
  bleed: 0.125in,

  // Content size
  content-width: 6in,
  content-height: 9in,

  // Marks
  bleed-marks: true,
  cut-marks: true,
  registration-marks: false,
)
