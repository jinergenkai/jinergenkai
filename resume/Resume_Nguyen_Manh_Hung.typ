// ==============================================================================
// RESUME — Nguyen Manh Hung
// Entry point: page config + #set rules + layout
// Edit content in sections/, theme in theme.typ, components in components.typ
// ==============================================================================

#import "@preview/lucide:0.1.0": *
#import "theme.typ": *
#import "components.typ": *

// ==============================================================================
// PAGE & TEXT CONFIGURATION  (must stay here — #set rules are scope-global)
// ==============================================================================

#set page(
  paper: "a4",
  margin: (x: 1.5cm, bottom: 0.5cm, top: 2cm),
  fill: background_color,
)

#set text(
  font: font_crimson,
  size: font_base,
  fill: rgb("#2d2d2d"),
)

#set par(justify: true, leading: 0.7em)

// ==============================================================================
// PAGE 1 LAYOUT
// ==============================================================================

#include "sections/header.typ"

#include "sections/skills.typ"

#grid(
  columns: (30%, 65%),
  column-gutter: 0.5cm,
  [#include "sections/left_col.typ"],
  [#include "sections/experience.typ"],
)

// ==============================================================================
// PAGE 2
// ==============================================================================

#include "sections/projects.typ"
