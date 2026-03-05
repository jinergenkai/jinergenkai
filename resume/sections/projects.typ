// ==============================================================================
// HIGHLIGHT PROJECTS — Page 2
// ==============================================================================

#import "../theme.typ": *
#import "@preview/lucide:0.1.0": *

#pagebreak()

#text(
  size: font_section,
  weight: "bold",
  tracking: 0.15em,
  fill: accent,
)[#box(baseline: 15%)[#lucide-icon("folder-open")] HIGHLIGHT PROJECTS]
#v(-0.7em)
#line(length: 100%, stroke: 0.5pt + divider)
#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2cm,
  row-gutter: 3em,

  // ── Huynh Hanh — Production ERP ──────────────────────────────────────────
  block[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.8em,
      align: (left + top, left + top),
      image("../images/hhfms.svg", height: 18pt),
      [
        #grid(
          columns: (1fr, auto),
          align: (left + top, right + top),
          text(size: font_subsection, weight: "bold", fill: accent)[#link("https://huynhhanh.com")[Huynh Hanh — Production ERP]],
          text(size: font_detail, fill: secondary, style: "italic")[Aug 2024 - Feb 2025],
        )
        #v(-0.4em)
        #text(size: font_small, fill: primary)[#link("https://huynhhanh.com")[→ huynhhanh.com]]
      ],
    )
    #v(0.4em)
    #set text(size: font_detail, fill: secondary)

    Designed ERP system for multi-site agricultural operations integrating hardware weighing stations and real-time receipt generation.

    #v(0.3em)
    • Architected full-stack ERP handling weighing station hardware via Web Serial API with real-time data sync, receipt printing, and automated report generation\
    • Integrated Vietnamese NLP chatbot (PhoBERT) for natural language business queries across inventory and financial data\
    • Built crop lifecycle management with 3D GPS visualization for multi-site planting area tracking

    #v(0.3em)
    #text(size: font_small, style: "italic")[ASP.NET Core, React.js, Electron.js, Docker, PhoBERT]
  ],

  // ── AI Content Automation Pipeline ───────────────────────────────────────
  block[
    #grid(
      columns: (1fr, auto),
      [#text(size: font_subsection, weight: "bold", fill: accent)[AI Content Automation Pipeline]],
      [#text(size: font_detail, fill: secondary, style: "italic")[2025 - Present]],
    )
    #v(0.4em)
    #set text(size: font_detail, fill: secondary)

    End-to-end content generation and distribution pipeline with model-agnostic architecture.

    #v(0.3em)
    • Built automated AI content pipeline integrating image/video generation models with workflow automation (ComfyUI + n8n) and multi-platform distribution.\
    • Integrated Zalo OA chatbot for audience engagement and automated response workflows\
    • Designed model-agnostic workflow enabling rapid swap between FLUX, SDXL, and video generation models

    #v(0.3em)
    #text(size: font_small, style: "italic")[ComfyUI, Python, n8n, Zalo OA API, Docker]
  ],

  // ── SmartMicro IoT Platform ───────────────────────────────────────────────
  block[
    #grid(
      columns: (1fr, auto),
      [#text(size: font_subsection, weight: "bold", fill: accent)[SmartMicro IoT Platform]],
      [#text(size: font_detail, fill: secondary, style: "italic")[Feb 2024 - Apr 2024]],
    )
    #v(0.4em)
    #set text(size: font_detail, fill: secondary)

    • Mobile IoT platform for smart home device management with voice control capabilities\
    • Connected BLE devices via GATT/UART protocols for real-time device control\
    • Integrated OpenAI API with Flutter TTS for voice-activated home automation

    #v(0.3em)
    #text(size: font_small, style: "italic")[Flutter, GetX, ASP.NET Core, SignalR, OpenAI API]
  ],
)

// FOOTER
#let today = datetime.today()
#v(1fr)
#align(center)[
  #text(size: font_small, fill: secondary)[
    Portfolio updated on #today.display("[month repr:long] [day], [year]")
  ]
]
