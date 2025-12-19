#import "theme.typ": blood-red, parchment

#let cover(subtitle, description, download) = {
  set page(width: 12.503in, height: 9.250in, margin: 0pt)

  // Variables
  let title = "BLOODSTAINED FANGS"

  // Dimensions
  let spine-width = 0.253in
  let bleed = 0.125in
  let cover-width = (12.503in - spine-width) / 2

  // Fonts
  let title-font = "Takota"
  let body-font = "Montserrat"

  // Template for alignment verification
  // Enable this to test that everything is aligned
  // place(top + left, image("art/cover_template.png", width: 100%, height: 100%))

  // Background: Black fill for everything
  // Remove this to test that everything is aligned
  rect(width: 100%, height: 100%, fill: black)

  // --- Front Cover (Right) ---
  place(top + left, dx: cover-width + spine-width, {
    block(width: cover-width, height: 100%, clip: true, {
      // Image
      image("art/cover_art.webp", width: 100%, height: 100%, fit: "cover")

      // Gradient
      place(bottom + left, rect(width: 100%, height: 60%, fill: gradient.linear(
        rgb(0, 0, 0, 0),
        black,
        angle: 90deg,
      )))
    })
  })

  place(top + left, dx: cover-width + spine-width, {
    block(width: cover-width - bleed, height: 100%, clip: true, {
      // Content
      place(bottom + center, dy: -1.5in, {
        align(center)[
          // Title Shadow
          #place(center, dx: 2pt, dy: 2pt)[
            #text(
              fill: black,
              size: 42pt,
              weight: "bold",
              font: title-font,
            )[#title]
          ]
          // Title Main
          #text(size: 42pt, weight: "bold", fill: blood-red, font: title-font)[#title]
          #v(-36pt)
          // Subtitle
          #text(size: 16pt, fill: parchment, font: body-font)[
            #subtitle
          ]
        ]
      })

      // Icons
      place(bottom + left, dx: 0.5in, dy: -0.5in, image("art/stamp.png", width: 15%))
      place(bottom + center, dx: 0in, dy: -0.5in - 4pt, image("art/by-sa.png", width: 15%))
      place(bottom + right, dx: -0.5in, dy: -0.5in + 8pt, image("art/trippy_pizza.webp", width: 15%))
    })
  })

  // --- Spine (Center) ---
  // Spine is disabled because the space is way too small.
  // #place(top + left, dx: cover-width + spine-width / 2, {
  //   block(width: auto, height: 100%, fill: black, {
  //     place(center + horizon, rotate(-90deg, text(
  //       fill: parchment,
  //       size: 12pt,
  //       weight: "bold",
  //       font: title-font,
  //       spacing: 2pt,
  //     )[#title]))
  //   })
  // })

  // --- Back Cover (Left) ---
  place(top + left, dx: bleed, {
    block(width: cover-width, height: 100%, fill: black, {
      // Content
      pad(x: 0.75in, y: 1in, {
        align(center + horizon)[
          #block(width: 80%)[
            #text(size: 14pt, fill: parchment, font: body-font)[
              #description
            ]
          ]

          #v(36pt)
          #line(length: 30%, stroke: 2pt + blood-red)
          #v(24pt)

          #text(size: 12pt, fill: parchment, font: body-font)[
            #download
          ]

          #text(size: 12pt, fill: blood-red, font: body-font)[
            bloodstained-fangs.trippy.pizza
          ]
        ]
      })
    })
  })
}
