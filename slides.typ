#import "@preview/polylux:0.3.1": *
#import themes.metropolis: *

#let slides(doc) = [
  #show: metropolis-theme.with()
  #set text(size: 20pt, font: "IBM Plex Sans")

  #doc
]
