// ==============================================================================
// PROJECTS – Page 2
// ==============================================================================

#import "../theme.typ": *
#import "@preview/lucide:0.1.0": *

#v(0.6em)

#text(
  size: font_section,
  weight: "bold",
  tracking: 0.15em,
  fill: accent,
)[#box(baseline: 15%)[#lucide-icon("folder-open")] FREELANCE]
#v(-0.85em)
#line(length: 100%, stroke: 0.5pt + divider)
#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.2cm,
  row-gutter: 3em,

  // ── ThuleHT – E-commerce Platform ────────────────────────────────────────
  block[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.8em,
      align: (left + top, left + top),
      image("../images/thule.jpg", height: 18pt),
      [
        #grid(
          columns: (1fr, auto),
          align: (left + top, right + top),
          text(size: font_subsection, weight: "bold", fill: accent)[#link("https://thuleht.com")[ThuleHT – E-commerce Platform]],
          text(size: font_detail, fill: secondary, style: "italic")[2026 - Present],
        )
        #v(-0.4em)
        #text(size: font_small)[#link("https://thuleht.com")[→ thuleht.com]]
      ],
    )
    #v(0.28em)
    #set text(size: font_detail, fill: secondary)

    Cosmetics e-commerce platform with search, messaging, and chatbot.

    #set par(justify: false)
    #v(0.21em)
    • Built notification service over Zalo OA API and email — order updates, campaigns, and OA account verification\
    • Built product search on Elasticsearch with Vietnamese language analysis\
    • Shipped an MCP-based chatbot for customer inquiries and order tracking

    #set par(justify: true)
    #v(0.21em)
    #text(size: font_small, style: "italic")[Tech: Golang, Elasticsearch, Zalo OA API, Docker, PostgreSQL]
  ],

  // ── Huynh Hanh – Management System ──────────────────────────────────────
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
          text(size: font_subsection, weight: "bold", fill: accent)[#link("https://huynhhanh.com")[Huynh Hanh – Management System]],
          text(size: font_detail, fill: secondary, style: "italic")[2024 - Present],
        )
        #v(-0.4em)
        #text(size: font_small)[#link("https://huynhhanh.com")[→ huynhhanh.com] · #link("https://github.com/huynhhanh-ms")[github.com/huynhhanh-ms]]
      ],
    )
    #v(0.28em)
    #set text(size: font_detail, fill: secondary)

    Multi-service platform for agricultural operations.

    #set par(justify: false)
    #v(0.21em)
    • Built a storage service with a RAG pipeline for document search across operational records\
    • Built a Go service for geospatial multi-site land tracking\
    • Synced weighing-station hardware over Web Serial API with automated receipt generation

    #set par(justify: true)
    #v(0.21em)
    #text(size: font_small, style: "italic")[Tech: Java, Python, FastAPI, Spring Boot, Golang, PostgreSQL, Docker, RAG]
  ],

  // ── J Post Image ─────────────────────────────────────────────────────────
  // This for late addition if I want to showcase a personal project, please don't delete this
  // block[
  //   #grid(
  //     columns: (1fr, auto),
  //     [#text(size: font_subsection, weight: "bold", fill: accent)[#link("https://t.me/jiner_auto_bot")[J Post Image — AI Content Pipeline]]],
  //     [#text(size: font_detail, fill: secondary, style: "italic")[2025 - Present]],
  //   )
  //   #v(-0.3em)
  //   #text(size: font_small)[#link("https://t.me/jiner_auto_bot")[→ t.me/jiner_auto_bot] · Try it: 5 free credits per telegram user]
  //   #v(0.4em)
  //   #set text(size: font_detail, fill: secondary)

  //   End-to-end AI content pipeline: local GPU image/video generation → automated posting → audience engagement, orchestrated via Telegram bot.

  //   #v(0.3em)
  //   • Architected on-premise GPU inference with WireGuard VPN tunneling through VPS hub – serving ZImage/Qwen models from local RTX via Telegram bot interface\
  //   • Built automated distribution: ComfyUI generation → Postiz scheduling → multi-platform posting, with Supabase storage and FastAPI orchestration\
  //   • Designed model-agnostic workflow enabling rapid swap between FLUX, SDXL, and video generation models without pipeline reconfiguration

  //   #v(0.3em)
  //   #text(size: font_small, style: "italic")[Python, FastAPI, ComfyUI, WireGuard, Supabase, Telegram Bot API, Docker, n8n]
  // ],
)

// FOOTER
// #let today = datetime.today()
// #v(1fr)
// #align(center)[
//   #text(size: font_small, fill: secondary)[
//     Portfolio updated on #today.display("[month repr:long] [day], [year]")
//   ]
// ]
