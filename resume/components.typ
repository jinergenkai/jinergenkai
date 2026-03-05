// ==============================================================================
// COMPONENTS — Reusable Typst functions
// ==============================================================================

#import "theme.typ": *

// Timeline dot
#let dot(color: timeline_color) = {
  circle(radius: 1.5pt, fill: color)
}

// Timeline vertical line + dot
#let timeline_item(
  height: 10em,
  color: timeline_color,
  dx: -0.7cm,
  dy_dot: 0.15em,
  dx_dot: 0.13em,
  dy_line: 2em,
) = {
  place(left + top, dx: dx + dx_dot, dy: dy_dot, dot(color: color))
  place(
    left + top,
    dx: dx + 0.085cm,
    dy: dy_line,
    box(width: 0.5pt, height: height, fill: color),
  )
}

// Skill chip/badge
#let chip(label) = box(
  fill: primary.lighten(80%),
  stroke: 0.5pt + primary.lighten(10%),
  radius: 2pt,
  inset: (x: 5pt, y: 2pt),
  baseline: 80%,
  text(size: 6.5pt, fill: accent, font: font_crimson)[#label]
)

// Skill row: bold label | chip row
#let skill_row(label, skills) = block(above: 0.25em, below: 0.25em)[
  #grid(
    columns: (2.2cm, 1fr),
    column-gutter: 0.6em,
    align: (right + horizon, left + top),
    [#text(size: 7pt, weight: "bold", fill: accent)[#label]],
    [#skills.map(chip).join(h(0.35em))]
  )
]
