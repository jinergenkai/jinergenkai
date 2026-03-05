// ==============================================================================
// RIGHT COLUMN — Experience
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
    #line(length: 100%, stroke: 0.5pt + divider)

    // ── TMA Solutions ────────────────────────────────────────────────────────
    #block(
      below: 1.5em,
      [
        #timeline_item(height: 34em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[TMA Solutions - Backend Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Apr 2024 - Present]],
        )
        #v(0.8em)

        // Nokia Altiplano
        #text(size: font_body, weight: "bold", fill: accent)[→ Nokia Altiplano - Access Controller Team]
        #v(0.4em)

        #set text(size: font_body, fill: secondary)

        Designed and implemented campaign management system within Nokia Altiplano platform, enabling orchestrated firmware upgrades across distributed optical network infrastructure.

        #v(0.4em)
        #set text(size: font_detail)

        • Designed bulk device upgrade orchestration with parallel execution, retry mechanisms, and failure recovery for NT/LT board reachability across distributed network topology NETCONF/YANG\
        • Owned Build Police responsibilities for 20+ member cross-regional team (Vietnam/India), managing Jenkins pipeline stability, analyzing test failures via Kibana, monitoring system health through Prometheus/Grafana, and coordinating infrastructure issues with DevOps\
        • Contributed to event streaming migration from JMS to Kafka for inter-domain communication between AC and IBN services

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java 17, Spring Boot, Angular, Kafka, Helm, Kubernetes, Jenkins, Robot Framework, ELK, Prometheus, Grafana, Keycloak
        ]

        #v(0.8em)

        // Agentic Vision
        #text(size: font_body, weight: "bold", fill: accent)[→ Agentic Vision - AI-Powered Security Platform]
        #v(0.4em)

        #set text(size: font_body, fill: secondary)

        Built backend infrastructure for AI-powered security monitoring platform, now deployed for enterprise clients including Novaland.

        #v(0.4em)
        #set text(size: font_detail)

        • Developed FastAPI backend orchestrating AI inference service for real-time violation detection across 50+ cameras, with automated alerting via Zalo OA and email\
        • Implemented core platform services including notification system, license management, image storage with MinIO, and caching layer for AI model responses\
        • Collaborated with AI team on service contract design and integration patterns for custom security use-cases and workflow

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Python, FastAPI, React, Docker, MinIO, Redis
        ]
      ],
    )

    // ── FPT Software ─────────────────────────────────────────────────────────
    #block(
      below: 1.5em,
      [
        #timeline_item(height: 13em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[FPT Software - Software Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]],
        )
        #v(0.8em)

        #set text(size: font_body, fill: secondary)

        Developed medical imaging software for ultrasound analysis focusing on vascular measurement tools and performance optimization.

        #v(0.6em)
        #set text(size: font_detail)

        • Implemented measurement and annotation features for blood flow analysis, vessel sizing, and wall thickness detection in medical imaging applications\
        • Optimized application performance by offloading heavy I/O operations from UI thread, reducing startup time by 40% and improving responsiveness\
        • Restructured API response formats to meet specific client requirements, ensuring efficient data delivery and seamless frontend integration

        #v(0.5em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech Stack: C++, C\#, WPF, ASP.NET Core
        ]
      ],
    )
  ],
)
