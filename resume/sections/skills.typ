// ==============================================================================
// SKILLS BAR – Horizontal section, chip/tag style
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
    #v(0.3em)

    #skill_row("Core Expertise", (
      "Java 17", "Spring Boot", "Kafka", "Event-Driven Architecture", "Microservices", "Distributed Systems",
    ))
    #skill_row("Infrastructure", (
      "Kubernetes", "Helm", "Docker", "Jenkins", "Prometheus", "Grafana",
      "ELK/OpenSearch", "Keycloak", "NGINX Ingress", "SonarQube",
    ))
    #skill_row("Data & Messaging", (
      "PostgreSQL", "MariaDB", "Redis", "Elasticsearch", "Kafka (migration + production ops)",
    ))
    #skill_row("AI Integration", (
      "FastAPI", "RAG pipelines", "OpenAI API", "On-premise GPU inference", "Computer Vision (Pytorch, ONNX)",
    ))
    #skill_row("Languages", (
      "Java", "Golang", "Python", "TypeScript",
    ))
    #skill_row("Tools", (
      "Git", "Jira", "Confluence", "Robot Framework", "WireGuard", "n8n",
    ))
  ]
)

#v(0.3cm)
