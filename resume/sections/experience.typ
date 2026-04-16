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
        #timeline_item(height: 40em)

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

        Designed campaign management system within Nokia Altiplano platform, orchestrating firmware upgrades for 5,000+ telecom devices across distributed optical network infrastructure spanning 5 countries.

        #v(0.4em)
        #set text(size: font_detail)

        • Designed distributed firmware upgrade orchestration using NETCONF/YANG with dual-bank architecture, parallel execution across 3 regions, circuit breaker patterns, and automated rollback\
        • Diagnosed critical Kafka consumer lag incident caused by fixed partition key – implemented distributed key strategy restoring real-time processing for 20+ microservices\
        • Owned Build Police role for 20+ member cross-regional team (Vietnam/India/China/Greece/Finland) – Jenkins CI/CD health, flaky test reduction via Robot Framework, code quality enforcement via SonarQube\
        • Migrated event streaming from JMS to Kafka, enabling scalable inter-domain communication across AC and IBN services\
        • Resolved 15+ CVE security tickets using Syft SBOM analysis across containerized microservices

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Java 17, Spring Boot, Kafka, Helm, Kubernetes, NGINX Ingress, Jenkins, MariaDB, Redis \
          ELK/OpenSearch, Prometheus, Grafana, Keycloak, NETCONF/YANG
        ]

        #v(0.8em)

        // Agentic Vision
        #text(size: font_body, weight: "bold", fill: accent)[→ Agentic Vision – AI-Powered Security Platform (dedicated assignment)]
        #v(0.4em)

        #set text(size: font_body, fill: secondary)

        Architected backend for AI-powered security monitoring platform with real-time video streaming and escalating alert workflows, processing 100+ camera feeds. Deployed on-premise for enterprise clients including Novaland.

        #v(0.4em)
        #set text(size: font_detail)

        • Built FastAPI streaming backend with WebSocket for real-time 100+ IP camera monitoring, automated alert pipelines reducing manual workload by 67%\
        • Designed escalating alert workflow engine: user-configurable trigger chains (1min → 5min intervals, progressive severity) routing to mail/SMS recipients – enabling custom security response automation\
        • Implemented token-aware prompt optimization for OpenAI API, balancing inference accuracy vs cost with response caching to cut redundant calls

        #v(0.4em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech: Python, FastAPI (StreamResponse), WebSocket, Redis, OpenAI API, Docker
        ]
      ],
    )

    // ── FPT Software ─────────────────────────────────────────────────────────
    #block(
      below: 1.5em,
      [
        #timeline_item(height: 10em)

        #grid(
          columns: (1fr, auto),
          [#text(size: font_subsection, weight: "bold", fill: accent)[FPT Software – Software Engineer]],
          [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]],
        )
        #v(0.8em)

        #set text(size: font_body, fill: secondary)

        Developed medical imaging software for ultrasound analysis – performance optimization and API design for international healthcare clients.

        #v(0.6em)
        #set text(size: font_detail)

        • Optimized imaging application by offloading heavy I/O to background threads, reducing startup time by 20%\
        • Restructured backend API response formats for efficient high-throughput medical data delivery

        #v(0.5em)
        #text(size: font_small, fill: secondary, style: "italic")[
          Tech Stack: C++, C\#, ASP.NET Core
        ]
      ],
    )
  ],
)
