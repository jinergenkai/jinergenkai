// ==============================================================================
// HEADER SECTION
// ==============================================================================

#import "../theme.typ": *
#import "@preview/lucide:0.1.0": *

#block(
  width: 100%,
  [
    #place(
      top + left,
      dx: 4cm,
      dy: 1.5cm,
      line(length: 100% - 4.4cm, stroke: 20pt + primary.lighten(70%)),
    )
    #place(
      top + left,
      dx: -0.3cm,
      dy: -0.8cm,
      text(
        size: 110pt,
        fill: primary.lighten(50%),
        weight: "bold",
        font: font_computer,
      )[H#text(size: 10pt, fill: accent, weight: "bold", font: "New Computer Modern")[#h(2.5em)Software Engineer]
        #text(
          size: 30pt,
          fill: background_color,
          weight: "bold",
          font: "New Computer Modern",
        )[#h(4.7em)Jiner#box(baseline: 15%, image("../assets/smille-sunglasses.svg", height: 1em))]
      ],
    )

    #place(
      top + left,
      dx: 3.8cm,
      dy: -0.8cm,
      line(length: 2.7cm, stroke: 2pt + primary.lighten(50%), angle: 90deg),
    )

    #v(.8cm)

    #text(
      size: font_name,
      weight: "bold",
      fill: accent,
      font: font_display,
      tracking: 0.23em,
    )[Nguyen Manh Hung]
    #v(0.1cm)
    #text(
      size: font_job_title,
      weight: "regular",
      fill: secondary,
    )[With 2+ years of experience in enterprise Java and backend engineering, Integrating AI into scalable systems. \
      ICPC medalist, currently developing large-scale Fixed Network Management Systems at work.]
  ],
)

#v(0.4cm)
