// Slides in plain Typst: one page per slide, no package needed.
#let accent = rgb("#1F6F5C")
#set page(paper: "presentation-16-9", margin: (x: 2.2cm, y: 1.6cm), numbering: "1", number-align: right)
#set text(size: 22pt)

#let slide(title, body) = {
  pagebreak(weak: true)
  text(size: 30pt, weight: "bold", fill: accent, title)
  v(0.8em)
  body
}

#page(numbering: none, fill: accent)[
  #set text(fill: white)
  #v(1fr)
  #text(size: 40pt, weight: "bold")[Empty Repo Test]
  #v(0.4em)
  #text(size: 22pt)[A subtitle, if it helps]
  #v(1.2em)
  Ada Varga · Your Institution · #datetime.today().display("[month repr:long] [year]")
  #v(1fr)
]

#slide[The problem][
  - One idea per slide.
  - Few words; the talk carries the rest.
  - Show, then tell.
]

#slide[Results][
  #align(center, table(
    columns: 3,
    stroke: none,
    align: (left, right, right),
    table.hline(),
    [*Method*], [*Accuracy*], [*Time*],
    table.hline(stroke: 0.5pt),
    [Baseline], [0.81], [12.4 s],
    [Ours], [*0.89*], [*3.1 s*],
    table.hline(),
  ))
]

#slide[Take-away][
  #block(fill: accent.lighten(85%), inset: 1em, radius: 6pt, width: 100%)[
    What should the audience remember tomorrow?
  ]
]
