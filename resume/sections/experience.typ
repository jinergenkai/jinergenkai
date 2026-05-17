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
    #v(-0.7em)
    #line(length: 100%, stroke: 0.5pt + divider)
    #v(0.7em)

    // ── TMA Solutions ────────────────────────────────────────────────────────
    #block(
      below: 1.5em,
      [
        #timeline_item(height: 38.5em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[TMA Solutions – Backend Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Apr 2024 - Present]],
        )
        #v(0.8em)

        // Nokia Altiplano
        #text(size: font_body, weight: "bold", fill: accent)[→ Nokia Altiplano – Access Controller Team]
        #v(0.4em)

        #set text(size: font_body, fill: secondary)

        Implemented and maintained platform services within Nokia Altiplano, focusing on large-scale device orchestration and telemetry stream processing.

        #v(0.4em)
        #set text(size: font_detail)

        • Worked within KPI engine domain - windowed metric computation across telemetry streams from thousands of devices, partitioning Kafka topics by device hostname for ordering guarantees and feeding periodic aggregated KPIs into OpenTSDB and the alarm pipeline\
        • Built campaign orchestration service for firmware upgrades across 5,000+ telecom devices spanning 5 countries — publishing campaign lifecycle events to Kafka for cross-service coordination, implementing dual-bank rollback, staggered execution windows, and per-device idempotent state transitions over NETCONF/YANG to keep network availability during regional rollouts\
        • Rotated as Build Police for 14+ engineer cross-regional team (Vietnam, India, China, Greece, Finland) - triaging Jenkins pipeline failures, isolating flaky Robot Framework tests, and routing infrastructure issues to DevOps to reduce developer-blocking failures and improve mean-time-to-merge.

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java, Spring Boot, Kafka, Kubernetes, Helm, Jenkins, MariaDB, Redis, OpenTSDB, ELK/OpenSearch, Prometheus, Grafana
        ]

        #v(0.8em)

        // Agentic Vision
        #text(size: font_body, weight: "bold", fill: accent)[→ Agentic Vision – AI-Powered Security Platform]
        #v(0.4em)

        #set text(size: font_body, fill: secondary)

        Integrated AI-powered video monitoring capabilities into existing Java enterprise security platform. Building Python inference layer and connecting it to the Spring Boot orchestration system via Kafka. Deployed on-premise for enterprise clients including Novaland.

        #v(0.4em)
        #set text(size: font_detail)

        • Built Python/FastAPI streaming service with WebSocket for real-time 100+ IP camera monitoring, integrated into existing Spring Boot platform via Kafka for decoupled alert processing\
        • Extended alert workflow engine in Spring Boot with configurable trigger chains (1min → 5min intervals, progressive severity) routing to mail/SMS recipients – enabling custom security response automation\
        • Implemented token-aware prompt optimization for OpenAI API, balancing inference accuracy vs cost with Redis caching to cut redundant calls

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java, Spring Boot, Kafka, Python, FastAPI, WebSocket, Redis, OpenAI API, Docker
        ]
      ],
    )

    // ── FPT Software ─────────────────────────────────────────────────────────
    #block(
      below: 1.5em,
      [
        #timeline_item(height: 8.5em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[FPT Software – Software Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]],
        )
        #v(0.8em)

        #set text(size: font_body, fill: secondary)

        Developed medical imaging software for ultrasound analysis - performance optimization and API design for international healthcare clients.

        #v(0.6em)
        #set text(size: font_detail)

        • Optimized imaging application by offloading heavy I/O to background, reducing startup time by 20%\
        • Restructured backend API response formats for efficient high-throughput medical data delivery

        #v(0.5em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech Stack: C++, C\#, ASP.NET Core
        ]
      ],
    )
  ],
)
