#import "theme.typ": *

#let options(items) = {
  let numbered-items = items.enumerate().map(it => [#(it.at(0) + 1):#it.at(1)])
  align(center, [
    #text(weight: "bold", fill: blood-red)[#numbered-items.slice(0, 3).join(" ")]
    #v(-6pt)
    #text(weight: "bold", fill: blood-red)[#numbered-items.slice(3, 6).join(" ")]
  ])
}

#let subsection-header(title, show-line: true) = {
  align(center, block(
    width: 100%,
    breakable: false,
    [
      #set text(size: 24pt, weight: "bold", fill: blood-red, font: "Takota")
      #title
      #v(-6pt)
      #if show-line {
        line(length: 60%, stroke: 1pt + blood-red)
      }
    ],
  ))
}

#let note-block(content) = {
  align(center)[
    #block(width: 100%, inset: 12pt, stroke: 1pt + dark-red, fill: white.darken(2%))[#content]
  ]
}


#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
  fill: parchment,
)

#set text(
  font: "Montserrat",
  size: 10pt,
  fill: shadow-gray,
)

#show heading.where(level: 1): it => {
  set text(font: "Takota", size: 36pt, fill: blood-red)
  align(center, it.body)
  v(-18pt)
}

= BLOODSTAINED FANGS MICRO

#align(center)[
  #set text(style: "italic")
  The night is dark and dangerous. The pale moon appears through the clouded sky, shimmering against the puddles under the heavy rain. Bloodstained Fangs Micro edition is a solo micro TTRPG of horror and survival through the urban shadows.
]

#note-block([
  To play the game, *roll or choose Human or Monster*
  then roll your *starting situation*.
])

#v(12pt)

#let bar-width = 100pt
#let circle-width = 36pt
#let circle-font-size = 16pt

#let circle(left-text, center-text, right-text) = {
  align(center + horizon)[
    #text(font: "Takota", size: circle-font-size)[#left-text]
    #box(
      width: circle-width,
      height: circle-width,
      stroke: 2pt + blood-red,
      fill: parchment,
      radius: 50%,
      align(center + horizon, text(size: circle-font-size, font: "Takota", fill: blood-red)[#center-text]),
    )
    #text(font: "Takota", size: circle-font-size)[#right-text]
  ]
}

#grid(
  columns: (1fr, bar-width, 1fr),
  column-gutter: 20pt,
  // Left Column
  [
    #v(36pt)
    #subsection-header("(1-3) Human")
    #align(center)[
      You are a...
      #v(6pt)
      #options((
        [Cop],
        [Doctor],
        [Journalist],
        [Junkie],
        [Guard],
        [Gangster],
        [Drug Dealer],
      ))
      #v(6pt)
      They...
      #v(6pt)
      #options((
        [Silenced],
        [Manipulated],
        [Discovered],
        [Attacked],
        [Obtained],
        [Demanded],
      ))
      #v(0pt)
      #options((
        [A a person],
        [A relic],
        [A secret],
        [A favor],
        [A debt],
        [A promise],
      ))
      #v(6pt)
      You can't let it happen.
      It's personal.
      #v(6pt)
      // #options((
      //   [Family],
      //   [Necessity],
      //   [Cops],
      //   [Gang],
      //   [Faith],
      //   [Ethics],
      // ))
      Begin with the *Track* on *Step 4*.
    ]
  ],
  // Center Column: Vertical Bar with Steps
  grid.cell(
    block(height: 280pt, width: bar-width)[
      #place(center)[#line(length: 98%, angle: 90deg, stroke: 2pt + blood-red)]
      #stack(
        dir: ttb,
        spacing: 1fr,
        [
          // #place(
          //   left,
          //   text(weight: "bold", size: 18pt, font: "Takota", fill: blood-red)[HUMAN],
          //   dx: -24pt,
          // )
          #circle("d4", "1", "d20")
          #circle("d6", "2", "d12")
          #circle("d8", "3", "d10")
          #circle("d10", "4", "d8")
          #circle("d12", "5", "d6")
          #circle("d20", "6", "d4")
          // #place(
          //   right,
          //   text(weight: "bold", size: 18pt, font: "Takota", fill: blood-red)[MONSTER],
          //   dx: 24pt,
          // )
        ],
      )
    ],
  ),
  // Right Column
  [
    #align(center)[
      #v(36pt)
      #subsection-header("(3-6) Monster")
      They turned you into a monster.
      #v(6pt)
      #options(([Vampire], [Werewolf], [Shapeshifter], [Psychic], [Wizard/Witch], [Specter]))
      #v(6pt)
      Now you are looking for:
      #v(6pt)
      #options(([Revenge], [Escape], [Reversal], [Redemption], [Answers], [Power]))
      #v(6pt)
      But before you can begin, you must:
      #v(6pt)
      #options(([Find someone], [Escape], [Learn], [Kill], [Obtain], [Feed]))
      #v(6pt)
      Begin with the *Track* on *Step 2*.
    ]
  ],
)

#v(18pt)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 0pt,
  [
    #note-block[
      == Actions
      Whenever you do something risky, roll the die according to your position on the *Track*.
      Roll *HUMAN (left die)* if you are negotiating, searching, helping, understanding, thinking, defending, hiding. Roll *MONSTER (right die)* if you are attacking, destroying, breaking, threatening, deceiving, lying.

      *1-2* is a catastrophic fail. *3-4* is a serious complication. *5+* is a success (*4* is also a success when rolling *d4*).

      == Oracle
      Ask Yes/No questions about NPCs and the world to the Oracle by rolling a *d6*

      *1* No, and *2* No *3* No, but
      #v(-6pt)
      *4* Yes, but *5* Yes *6* Yes, and.
    ]

  ],
  [
    #note-block[
      == When you FAIL
      If you were doing *HUMAN* things (negotiating, searching, helping, loving, understanding, thinking, etc.) then you *move 1 step up on the Track*.
      If you were doing *MONSTER* things (killing, hurting, destroying, etc.) then you *move 1 step down on the Track*.

      == ENDING

      If you must move on the track but you are already at the end:

      If you are at the *TOP* end, you *let go and lose control forever*. The monster within you is freed and all is lost.

      If you are at the *BOTTOM* end, you *can't take it anymore: your mind cracks and you lose sight of what's real*.
    ]
  ],
)

#align(center)[
  (C) 2025 Enrico Fasoli - Licensed under CC BY-SA 4.0
]
