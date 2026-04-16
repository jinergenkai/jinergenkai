// ==============================================================================
// LEFT COLUMN – Contact · Education · Awards
// ==============================================================================

#import "../theme.typ": *
#import "@preview/lucide:0.1.0": *

// CONTACT
#block(
  above: 0em,
  below: 1.5em,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("user-round")] CONTACT]
    #v(-0.7em)
    #line(length: 3cm, stroke: 0.5pt + accent)
    #v(0.7em)

    #set text(size: font_detail, fill: secondary)

    #grid(
      columns: (auto, 1fr),
      row-gutter: 1.2em,
      column-gutter: 1em,

      [#lucide-icon("map-pin", size: 5pt)], [Ho Chi Minh City, Vietnam],
      [#lucide-icon("mail", size: 5pt)],    [#link("mailto:nmhung.works@gmail.com")[nmhung.works\@gmail.com]],
      [#lucide-icon("phone", size: 5pt)],   [#link("tel:+84947339718")[+84 947 339 718]],
      [#lucide-icon("github", size: 5pt)],  [#link("https://github.com/jinergenkai")[github.com/jinergenkai]],
      [#lucide-icon("linkedin", size: 5pt)],  [#link("https://www.linkedin.com/in/jinergenkai")[linkedin.com/in/jinergenkai]],
      [#lucide-icon("book", size: 5pt)],  [#link("https://jinergenkai.github.io")[Jiner Blog]],
    )
  ],
)

#v(1em)

// EDUCATION
#block(
  above: 0em,
  below: 1.5em,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("graduation-cap")] EDUCATION]
    #v(-0.7em)
    #line(length: 3.4cm, stroke: 0.5pt + accent)

    #block(
      below: 2.2em,
      [
        #grid(
          columns: (1fr, auto),
          [#text(size: font_detail, weight: "bold", fill: accent)[• Bachelor of IT]],
          pad(right: 3.5em)[#align(right)[#text(size: font_small, fill: secondary, style: "italic")[2020 - 2024]]],
        )
        #v(-0.2em)
        #text(size: font_detail, fill: secondary)[FPT University, HCMC]
        #v(-0.1em)
        #text(size: font_small, fill: secondary, style: "italic")[GPA 3.2/4.0 • 100% Scholarship]
      ],
    )

    #block(
      [
        #grid(
          columns: (1fr, auto),
          [#text(size: font_detail, weight: "bold", fill: accent)[• High School for Gifted]],
          pad(right: 3.5em)[#align(right)[#text(size: font_small, fill: secondary, style: "italic")[2017 - 2020]]],
        )
        #v(-0.2em)
        #text(size: font_detail, fill: secondary)[Nguyen Du HS (Informatics), Dak Lak]
      ],
    )
  ],
)

#v(1em)

// AWARDS
#block(
  above: 0em,
  below: 1.5em,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("award")] AWARDS]
    #v(-0.7em)
    #line(length: 2.6cm, stroke: 0.5pt + accent)

    #set text(size: font_detail, fill: secondary)

    #block(below: 2.1em)[
      #link("https://github.com/jinergenkai/jinergenkai/blob/main/awards/2023-ICPC%20Vietnam%20Southern%20Provincial%20PC-MEDAL.pdf")[• *ICPC 2023* - Third Prize\
      #h(0.5em) Vietnam Southern Region #box(baseline: 15%)[#text(fill: link_color)[#lucide-icon("external-link", size: 7pt)]]]
    ]

    #block(below: 2.1em)[
      #link("https://www.facebook.com/codingcompetitions/hacker-cup/2025/certificate/1212807709928476")[• *Meta Hacker Cup 2025*\
      #h(0.5em) Round 2 - Top 12% Global #box(baseline: 15%)[#text(fill: link_color)[#lucide-icon("external-link", size: 7pt)]]]
    ]

    #block(below: 2.1em)[
      #link("https://github.com/jinergenkai/jinergenkai/blob/main/awards/2021-ICPC%20Vietnam%20National%20PC-HONORABLE.pdf")[• *ICPC 2021* - Honorable Mention\
      #h(0.5em) Vietnam National #box(baseline: 15%)[#text(fill: link_color)[#lucide-icon("external-link", size: 7pt)]]]
    ]

    #block(below: 1.1em)[
      #link("https://github.com/jinergenkai/jinergenkai/blob/main/awards/Honorable%20mention%20for%20The%20Informatics%20in%20the%202020%20National%20High%20School.jpg")[• *National Excellent Student 2020*\
      #h(0.5em) Informatics - Honorable Mention #box(baseline: 15%)[#text(fill: link_color)[#lucide-icon("external-link", size: 7pt)]]]
    ]
  ],
)
