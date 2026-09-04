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
    #v(-0.85em)
    #line(length: 100%, stroke: 0.5pt + divider)
    #v(0.8em)

    #skill_row("Core Expertise", (
      "Java", "Spring Boot", "Kafka", "Microservices", "Distributed Systems",
    ))
    #skill_row("Infra & Cloud", (
      "Kubernetes",
      // "AWS (Lambda, S3, DynamoDB)",
      "Helm", "Docker", "Jenkins", "Robot Framework", "Prometheus", "Grafana",
    ))
    #skill_row("Data & AI", (
      "PostgreSQL", "MariaDB", "Redis", "Elasticsearch", "FastAPI", "OpenAI API", "On-premise GPU inference",
    ))
    #skill_row("Languages", (
      "Python", 
      // "Go", 
      "Dart/Flutter", "TypeScript/ReactJs",
    ))
  ]
)

