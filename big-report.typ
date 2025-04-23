#let big-report(
  title: "",
  author: "",
  cathedra: false,
  doc,
) = [
  #let spacing = 1em
  #let indent = 1.27cm
  #let tab() = h(indent)
  #let en(content) = text(lang: "en", content)

  #set page(margin: (left: 2.5cm, right: 1cm, top: 2cm, bottom: 2cm))
  #set text(
    font: "Liberation Serif",
    lang: "uk",
    size: 14pt,
    hyphenate: false,
    overhang: false,
  )
  #set par(justify: true, leading: spacing, spacing: spacing)
  #set list(marker: [--], indent: indent)
  #set enum(numbering: "1)", indent: indent)
  #set figure(supplement: [рис.])
  #set outline(title: "ЗМІСТ")

  #show raw: set text(font: "IBM Plex Mono", size: 9pt)
  #show heading.where(level: 1): set align(center)
  #show heading: self => [
    #set text(14pt)
    #h(indent * (self.level - 1))
    #self.body
    #v(spacing)
  ]
  #show figure.caption: self => [
    Рисунок
    #context self.counter.display(self.numbering)
    --
    #self.body
  ]

  #align(
    center,
    upper([
      *Київський національний університет*

      *імені Тараса Шевченка*
    ]),
  )
  #align(
    center,
    [
      Факультет комп'ютерних наук та кібернетики

      #if cathedra [Кафедра математичної інформатики] else []
    ],
  )
  #v(12%)
  #align(center, title)
  #author

  #place(
    bottom + center,
    [
      Київ -- #datetime.today().year()
    ],
  )

  #pagebreak()

  #set page(numbering: "1", number-align: right + top)

  #doc
]
