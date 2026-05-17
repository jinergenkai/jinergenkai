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
      dx: -0.1cm,
      dy: -0.8cm,
      text(
        size: 110pt,
        fill: primary.lighten(50%),
        weight: "bold",
        font: font_computer,
      )[H#text(size: 10pt, fill: accent, weight: "bold", font: "New Computer Modern")[#h(2em)Backend Engineer]
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
