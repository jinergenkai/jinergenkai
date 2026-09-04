// ==============================================================================
// RIGHT COLUMN – Experience
// ==============================================================================

#import "../theme.typ": *
#import "../components.typ": timeline_item
#import "@preview/lucide:0.1.0": *

#block(
  above: 3em,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("briefcase")] EXPERIENCE]
    // #line(length: 100%, stroke: 0.5pt + divider)
    #v(-0.85em)
    #line(length: 100%, stroke: 0.5pt + divider)
    #v(0.5em)

    // ── TMA Solutions ────────────────────────────────────────────────────────
    #block(
      below: 1em,
      [
        #timeline_item(height: 33.5em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[TMA Solutions – Backend Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Apr 2024 - May 2026]],
        )
        #v(0.8em)

        // Nokia Altiplano
        #text(size: font_body, weight: "bold", fill: accent)[→ Nokia Altiplano – Access Controller Team]
        #v(0.28em)

        #set text(size: font_body, fill: secondary)

        Platform services for device orchestration and telemetry at scale.

        #v(0.28em)
        #set text(size: font_detail)
        #set par(justify: false)

        • Built campaign orchestration for firmware upgrades across 5,000+ devices in 5 countries - rollback to the last known-good image, staggered rollout windows, and idempotent per-device state transitions over NETCONF/YANG\
        • Served as Build Police for a 14-engineer team across 5 countries - triaged Jenkins failures, isolated flaky Robot Framework tests, and kept merges unblocked\
        • Built windowed metric computation in the KPI engine - telemetry from thousands of devices on a 15-minute cycle, keyed by device ID across 8 Kafka partitions for ordering, feeding OpenTSDB and the alarm pipeline

        #set par(justify: true)
        #v(0.28em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java, Spring Boot, Kafka, Kubernetes, Helm, Jenkins, MariaDB, Redis, OpenTSDB, ELK/OpenSearch, Prometheus, Grafana
        ]

        #v(0.56em)

        // Agentic Vision
        #text(size: font_body, weight: "bold", fill: accent)[→ Agentic Vision – AI-Powered Security Platform]
        #v(0.28em)

        #set text(size: font_body, fill: secondary)

        AI video monitoring layered onto a Java security platform, deployed on-premise for clients including Novaland.

        #v(0.28em)
        #set text(size: font_detail)
        #set par(justify: false)

        • Built a Python/FastAPI streaming service with WebSocket for real-time monitoring of 100+ IP cameras, wired into the Spring Boot platform over Kafka for decoupled alerts\
        • Extended the Spring Boot alert engine with configurable trigger chains (1min → 5min, escalating severity) routing to mail and SMS\
        • Cut redundant OpenAI calls with token-aware prompting and Redis caching, trading inference cost against accuracy

        #set par(justify: true)
        #v(0.28em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java, Spring Boot, Kafka, Python, FastAPI, WebSocket, Redis, OpenAI API, Docker
        ]

        #v(0.56em)

        // ICON plc
        #text(size: font_body, weight: "bold", fill: accent)[→ ICON plc – Clinical Data Platform]
        #v(0.28em)

        #set text(size: font_detail, fill: secondary)
        #set par(justify: false)

        • Built serverless document services on AWS Lambda, S3, and DynamoDB - generating versioned history PDFs from clinical data forms and diffing each revision against the last\
        • Triaged production defects through ServiceNow and traced recurring escapes to stale test coverage

        #set par(justify: true)
        #v(0.28em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java, AWS Lambda, S3, DynamoDB
        ]
      ],
    )
    
    #v(0.8em)

    // ── FPT Software ─────────────────────────────────────────────────────────
    #block(
      below: 1em,
      [
        #timeline_item(height: 8.5em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[FPT Software – Software Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]],
        )
        #v(0.8em)

        #set text(size: font_body, fill: secondary)

        Medical imaging software for ultrasound analysis, for international healthcare clients.

        #v(0.42em)
        #set text(size: font_detail)
        #set par(justify: false)

        • Cut application startup time by 20% by offloading heavy I/O to background threads\
        • Restructured backend API response formats for high-throughput medical data delivery

        #set par(justify: true)
        #v(0.35em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: C++, C\#, ASP.NET Core
        ]
      ],
    )
  ],
)
