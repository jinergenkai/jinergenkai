// ==============================================================================
// SKILLS BAR — Horizontal section, chip/tag style
// ==============================================================================

#import "../theme.typ": *
#import "../components.typ": skill_row
#import "@preview/lucide:0.1.0": *

#block(
  width: 100%,
  [
    #text(
      size: font_section,
      weight: "bold",
      tracking: 0.15em,
      fill: accent,
    )[#box(baseline: 15%)[#lucide-icon("layers")] SKILLS]
    #v(-0.7em)
    #line(length: 100%, stroke: 0.5pt + divider)
    #v(0.5em)

    #skill_row("BACKEND", (
      // Core enterprise → rare protocols → architecture patterns
      "Java 17", "Spring Boot", "Spring Cloud",
      "NETCONF/YANG", "Kafka", "gRPC",
      "Microservices", "Event-Driven", "REST API", "WebSocket",
    ))
    #skill_row("DEVOPS", (
      // Orchestration → observability (senior signal) → storage
      "Kubernetes","Docker", "Jenkins CI/CD",
      "Prometheus", "Grafana", "ELK Stack",
      "Redis", "PostgreSQL", "OpenSearch", "MinIO", "MariaDB",
    ))
    #skill_row("AI & AUTO", (
      // Production AI first → model tooling → agentic workflow
      "Computer Vision", "Edge Inference", "ONNX", "TFLite",
      "FastAPI", "OpenAI API", "PhoBERT",
      "Agentic Workflow", "Claude Code", "Cursor", "n8n",
    ))
    #skill_row("LANGUAGES", (
      // Primary → secondary → frameworks by domain
      "Java", "Python", "TypeScript", "C++", "C#", "Dart",
      "Flutter", "Angular", "React", "ASP.NET Core",
    ))
    #skill_row("ALGORITHMS", (
      // Achievements first → technique depth
      "Dynamic Programming", "Graph Theory", "Combinatorics",
    ))
  ]
)

#v(0.3cm)
