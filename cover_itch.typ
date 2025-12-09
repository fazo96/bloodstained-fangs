#import "theme.typ": blood-red, dark-red, moon-silver, night-blue, parchment, shadow-gray

#set page(
  width: 630pt,
  height: 500pt,
  margin: 0pt,
  background: image("art/cover_art_itch.webp"),
)

// Dark gradient at the bottom helping text legibility
#place(bottom + left, rect(width: 100%, height: 100%, fill: gradient.linear(
  rgb(0, 0, 0, 0),
  rgb(0, 0, 0, 150),
  rgb(0, 0, 0, 255),
  angle: 90deg,
)))

#let text_dx = 4pt
#let text_dy = 160pt

#align(center + horizon)[
  #place(center, dx: text_dx + 2pt, dy: text_dy + 2pt)[
    #text(
      fill: black,
      size: 56pt,
      weight: "bold",
      font: "Takota",
    )[BLOODSTAINED FANGS]
  ]
  #place(center, dx: text_dx, dy: text_dy)[
    #text(size: 56pt, weight: "bold", fill: blood-red, font: "Takota")[BLOODSTAINED FANGS]
  ]

  #place(center, dx: 0pt, dy: text_dy + 60pt)[
    #text(size: 24pt, fill: parchment, font: "Montserrat")[
      A solo urban fantasy horror RPG
    ]
  ]
]
