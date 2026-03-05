// ==============================================================================
// HIGHLIGHT PROJECTS — Page 2
// ==============================================================================

#import "../theme.typ": *
#import "../components.typ": timeline_item
#import "@preview/lucide:0.1.0": *

#pagebreak()

#block(
  width: 100%,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("folder-open")] HIGHLIGHT PROJECTS]
    #line(length: 100%, stroke: 0.5pt + divider)
    #v(0.3em)

    // ── Huynh Hanh Financial Management ──────────────────────────────────────
    #block(below: 1.5em)[
      #timeline_item(height: 7em)
      #grid(
        columns: (1fr, auto),
        [#box(baseline: 25%, image("../images/hhfms-mono.svg", height: 13pt)) #h(0.35em)#text(size: font_subsection, weight: "bold", fill: accent)[#link("https://huynhhanh.com")[Huynh Hanh Financial Management]]],
        [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2024 - Feb 2025]],
      )
      #v(0.2em)
      #text(size: font_small, fill: primary)[#link("https://huynhhanh.com")[→ huynhhanh.com]]

      #v(0.5em)
      #set text(size: font_detail, fill: secondary)

      • Full-stack agricultural platform with AI chatbot integration using PhoBERT for Vietnamese NLP\
      • Built real-time truck weighing system with Web Serial API, receipt printing, and report export\
      • Developed crop lifecycle management with 3D GPS visualization for planting area tracking

      #v(0.3em)
      #text(size: font_small, style: "italic")[ASP.NET Core, React.js, Electron.js, Material UI, Docker]
    ]

    // ── SmartMicro IoT Platform ───────────────────────────────────────────────
    #block(below: 1.5em)[
      #timeline_item(height: 6em)
      #grid(
        columns: (1fr, auto),
        [#text(size: font_subsection, weight: "bold", fill: accent)[SmartMicro IoT Platform]],
        [#text(size: font_detail, fill: secondary, style: "italic")[Feb 2024 - Apr 2024]],
      )

      #v(0.5em)
      #set text(size: font_detail, fill: secondary)

      • Mobile IoT platform for smart home device management with voice control capabilities\
      • Connected BLE devices via GATT/UART protocols for real-time device control\
      • Integrated OpenAI API with Flutter TTS for voice-activated home automation

      #v(0.3em)
      #text(size: font_small, style: "italic")[Flutter, GetX, ASP.NET Core, SignalR, OpenAI API]
    ]
  ],
)

// FOOTER
#let today = datetime.today()
#align(center)[
  #text(size: font_small, fill: secondary)[
    Portfolio updated on #today.display("[month repr:long] [day], [year]")
  ]
]
