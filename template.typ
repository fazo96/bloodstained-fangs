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

// Helper to keep content together (e.g. heading + table)
#let keep_together(body) = {
  block(breakable: false, width: 100%, body)
}

// Custom table styling for RPG tables
// Automatically detects grid tables (more than 2 columns) and disables hyphenation
#let rpg_table(..args, body) = {
  // Extract the columns argument to detect if it's a grid
  let is_grid = false
  if "columns" in args.named() {
    let cols = args.named().columns
    // Check if columns is a number > 2, or an array with length > 2
    is_grid = (type(cols) == int and cols > 2) or (type(cols) == array and cols.len() > 2)
  }

  show table.cell: it => {
    block(breakable: false)[
      #if it.y == 0 {
        set text(fill: white, weight: "bold", size: 9pt)
        it
      } else {
        if is_grid {
          set text(hyphenate: false, size: 9pt)
          set par(justify: false)
          it
        } else {
          it
        }
      }
    ]
  }

  table(
    stroke: none,
    fill: (col, row) => {
      if row == 0 { blood-red } else if calc.rem(row, 2) == 0 { moon-silver.lighten(50%) } else { white }
    },
    inset: 8pt,
    align: left,
    ..args,
    body
  )
}

// Matrix d6 table generator for d66 oracle tables
// Takes an array of 36 items and generates two tables showing the full 6x6 matrix
// Items should be ordered row-by-row: [11, 12, 13, 14, 15, 16, 21, 22, ...]
#let matrix_d6(items, breakable: false) = {
  assert(items.len() == 36, message: "matrix_d6 requires exactly 36 items")

  // First table: columns 1-3
  let table1 = rpg_table(
    columns: (auto, 1fr, 1fr, 1fr),
    [],
    [1],
    [2],
    [3],
    ..for row in range(6) {
      (
        [#(row + 1)],
        items.at(row * 6 + 0),
        items.at(row * 6 + 1),
        items.at(row * 6 + 2),
      )
    }.flatten(),
  )

  // Second table: columns 4-6
  let table2 = rpg_table(
    columns: (auto, 1fr, 1fr, 1fr),
    [],
    [4],
    [5],
    [6],
    ..for row in range(6) {
      (
        [#(row + 1)],
        items.at(row * 6 + 3),
        items.at(row * 6 + 4),
        items.at(row * 6 + 5),
      )
    }.flatten(),
  )

  // Return both tables wrapped in keep_together
  if breakable {
    [
      #table1
      #table2
    ]
  } else {
    keep_together[
      #table1
      #table2
    ]
  }
}

// Two-column d66 table generator for oracle tables
// Takes an array of 36 items and generates a table with d66 roll numbers (11-66)
// Items should be ordered: [11, 12, 13, 14, 15, 16, 21, 22, ..., 66]
#let table_d66(items, title, breakable: true) = {
  assert(items.len() == 36, message: "table_d66 requires exactly 36 items")

  // Generate d66 roll numbers (11-16, 21-26, ..., 61-66)
  let roll_numbers = ()
  for row in range(1, 7) {
    for col in range(1, 7) {
      roll_numbers.push(str(row) + str(col))
    }
  }

  // Build the table content
  let table_content = ([D66], [#title])
  for i in range(36) {
    table_content.push([#roll_numbers.at(i)])
    table_content.push(items.at(i))
  }

  let result = rpg_table(
    columns: (auto, 1fr),
    ..table_content,
  )

  if breakable {
    result
  } else {
    keep_together(result)
  }
}

// Four-column d66 table generator for oracle tables with two side-by-side columns
// Takes an array of 36 items and generates a table with two d66 columns side by side
// Items should be ordered: [11, 12, 13, 14, 15, 16, 21, 22, ..., 66]
#let table_d66_double(items, title, breakable: true) = {
  assert(items.len() == 36, message: "table_d66_double requires exactly 36 items")

  // Generate d66 roll numbers (11-16, 21-26, ..., 61-66)
  let roll_numbers = ()
  for row in range(1, 7) {
    for col in range(1, 7) {
      roll_numbers.push(str(row) + str(col))
    }
  }

  // Build the table content with 4 columns (D66, Detail, D66, Detail)
  let table_content = ([D66], [#title], [D66], [#title])

  // Add 18 rows (half of 36 items)
  for i in range(18) {
    table_content.push([#roll_numbers.at(i)])
    table_content.push(items.at(i))
    table_content.push([#roll_numbers.at(i + 18)])
    table_content.push(items.at(i + 18))
  }

  let result = rpg_table(
    columns: (auto, 1fr, auto, 1fr),
    ..table_content,
  )

  if breakable {
    result
  } else {
    keep_together(result)
  }
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
    paper: "us-trade",
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
    font: "Montserrat",
    size: 11pt,
    lang: "en",
    weight: "regular",
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
    v(8pt)
    subsection-header(it.body)
    v(8pt)
  }

  show heading.where(level: 3): it => {
    v(8pt)
    text(size: 14pt, weight: "bold", fill: shadow-gray)[#it.body]
    v(8pt)
  }

  show heading.where(level: 4): it => {
    v(8pt)
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
          #place(center, dx: 2pt, dy: 2pt)[
            #text(
              fill: black,
              size: 48pt,
              weight: "bold",
              font: "Takota",
            )[BLOODSTAINED FANGS]
          ]
          #text(size: 48pt, weight: "bold", fill: blood-red, font: "Takota")[BLOODSTAINED FANGS]
          #v(6pt)
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
          #v(36pt)
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
