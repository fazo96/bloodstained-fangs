// Bloodstained Fangs RPG Template
// Custom Typst template for urban fantasy horror RPG

// ============================================================================
// TYPOGRAPHY & COLORS
// ============================================================================

#let blood-red = rgb("#8B0000")
#let dark-red = rgb("#4A0000")
#let night-blue = rgb("#1a1a2e")
#let moon-silver = rgb("#c0c0c0")
#let shadow-gray = rgb("#2a2a2a")
#let parchment = rgb("#f4f1e8")

// ============================================================================
// HELPER FUNCTIONS
// ============================================================================

// Custom table styling for RPG tables
#let rpg_table(..args, body) = {
  show table.cell: it => {
    if it.y == 0 {
      set text(fill: white, weight: "bold", size: 10pt)
      it
    } else {
      it
    }
  }

  table(
    stroke: none,
    fill: (col, row) => {
      if row == 0 { blood-red } else if calc.rem(row, 2) == 0 { rgb("#f5f5f5") } else { white }
    },
    inset: 8pt,
    align: left,
    ..args,
    body
  )
}

// Dice notation formatter
#let dice(notation) = {
  text(
    fill: blood-red,
    weight: "bold",
    font: "monospace",
    notation,
  )
}

// Section header with decorative line
#let section-header(title) = {
  block(
    width: 100%,
    breakable: false,
    [
      #set text(size: 24pt, weight: "bold", fill: blood-red)
      #title
      #v(-8pt)
      #line(length: 100%, stroke: 2pt + blood-red)
    ],
  )
}

// Subsection header
#let subsection-header(title) = {
  block(
    width: 100%,
    breakable: false,
    [
      #set text(size: 18pt, weight: "bold", fill: dark-red)
      #title
      #v(-6pt)
      #line(length: 60%, stroke: 1pt + dark-red)
    ],
  )
}

// Info box for important game mechanics
#let info-box(title: none, body) = {
  block(
    fill: night-blue.lighten(90%),
    stroke: 2pt + night-blue,
    radius: 4pt,
    inset: 12pt,
    width: 100%,
    [
      #if title != none [
        #text(weight: "bold", size: 11pt, fill: night-blue)[#title]
        #v(6pt)
      ]
      #body
    ],
  )
}

// ============================================================================
// MAIN TEMPLATE FUNCTION
// ============================================================================

#let bloodstained-template(
  title: "Bloodstained Fangs",
  subtitle: "A Solo Urban Fantasy Horror RPG",
  author: "Enrico Fasoli",
  version: "1.0",
  cover-image: none,
  body,
) = {
  // Document settings
  set document(
    title: title,
    author: author,
  )

  // Page setup
  set page(
    paper: "us-letter",
    margin: (
      top: 1in,
      bottom: 1in,
      left: 0.75in,
      right: 0.75in,
    ),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(size: 9pt, fill: gray)
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [_Bloodstained Fangs_], [#counter(page).display("1")],
        )
        #v(-8pt)
        #line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
      ]
    },
    footer: context {
      if counter(page).get().first() > 1 [
        #line(length: 100%, stroke: 0.5pt + gray.lighten(50%))
        #v(-8pt)
        #set text(size: 8pt, fill: gray)
        #align(center)[Page #counter(page).display("1")]
      ]
    },
  )

  // Text settings
  set text(
    font: "Linux Libertine",
    size: 11pt,
    lang: "en",
  )

  // Paragraph settings
  set par(
    justify: true,
    leading: 0.65em,
  )

  // Heading styles
  show heading.where(level: 1): it => {
    pagebreak()
    v(24pt)
    section-header(it.body)
    v(12pt)
  }

  show heading.where(level: 2): it => {
    pagebreak()
    v(18pt)
    subsection-header(it.body)
    v(10pt)
  }

  show heading.where(level: 3): it => {
    v(12pt)
    text(size: 14pt, weight: "bold", fill: shadow-gray)[#it.body]
    v(8pt)
  }

  show heading.where(level: 4): it => {
    v(10pt)
    text(size: 12pt, weight: "bold", style: "italic")[#it.body]
    v(6pt)
  }

  // List styling
  set list(marker: ([•], [◦], [▪]))
  set enum(numbering: "1.a.i.")

  // Link styling
  show link: it => {
    text(fill: blood-red, it)
  }

  // Emphasis styling
  show emph: it => {
    text(style: "italic", fill: dark-red.lighten(20%), it)
  }

  show strong: it => {
    text(weight: "bold", fill: shadow-gray, it)
  }

  // Cover page
  page(
    margin: 0pt,
    header: none,
    footer: none,
    background: if cover-image != none {
      place(top + left, image(cover-image, width: 100%, height: 100%, fit: "cover"))
      place(bottom + left, rect(width: 100%, height: 60%, fill: gradient.linear(rgb(0, 0, 0, 0), black, angle: 90deg)))
    },
  )[
    #place(
      bottom + center,
      dy: -1in,
      [
        #align(center)[
          #text(size: 48pt, weight: "bold", fill: blood-red)[
            BLOODSTAINED FANGS
          ]
          #v(12pt)
          #text(size: 20pt, fill: parchment)[
            #subtitle
          ]
          #v(24pt)
          #block(width: 80%)[
            #text(size: 14pt, fill: white.darken(20%))[
              A rules-light solo tabletop RPG of vampires, werewolves and witches
              stalking the night in the urban shadows
            ]
          ]
          #v(24pt)
          #line(length: 30%, stroke: 2pt + blood-red)
          #v(24pt)
          #text(size: 12pt, fill: white.darken(40%))[
            Version #version
          ]
          #place(bottom + right, dx: -0.5in, dy: -0.5in, image("art/by-sa.png", width: 15%))
          #place(bottom + left, dx: 0.5in, dy: -0.5in, image("art/stamp.png", width: 15%))
        ]
      ],
    )
  ]

  // Table of contents
  page[
    #outline(
      title: [
        #v(24pt)
        #text(size: 28pt, weight: "bold", fill: blood-red)[Contents]
        #v(12pt)
      ],
      indent: auto,
      depth: 2,
    )
  ]

  // Main content
  body
}
