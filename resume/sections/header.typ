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
      dx: 3.3cm,
      dy: .85cm,
      line(length: 100% - 3.3cm, stroke: 20pt + primary.lighten(70%)),
    )
    #place(
      top + left,
      dx: -0.1cm,
      dy: -0.8cm,
      text(
        size: 80pt,
        fill: primary.lighten(50%),
        weight: "bold",
        font: font_display,
      )[#box(scale(x: 145%, y: 100%, reflow: true)[H])#text(size: 10pt, fill: accent, weight: "bold", font: "New Computer Modern")[#h(0.6em)Backend Engineer]
        #text(
          size: 30pt,
          fill: background_color,
          weight: "bold",
          font: "New Computer Modern",
        )[#h(6.9em)Jiner#box(baseline: 15%, image("../assets/smille-sunglasses.svg", height: 1em))]
      ],
    )

    #place(
      top + left,
      dx: 3.2cm,
      dy: -0.8cm,
      line(length: 2cm, stroke: 1pt + primary.lighten(50%), angle: 90deg),
    )

    #v(.2cm)

    #text(
      size: font_name,
      weight: "bold",
      fill: accent,
      font: font_display,
      tracking: 0.1em,
    )[Nguyễn Mạnh Hùng]
    #v(0.1cm)
    #text(
      size: font_job_title,
      weight: "regular",
      fill: secondary,
    )[With 2+ years building scalable distributed systems across enterprise platforms. Specializing in Java/Spring Boot, Kafka, and Kubernetes, with hands-on AI integration experience.]
  ],
)

#v(0.4cm)
