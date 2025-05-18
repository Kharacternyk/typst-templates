#import "@preview/touying:0.6.1": *
#import themes.metropolis: *

#let slides(doc) = [
  #show: metropolis-theme.with()
  #doc
]
