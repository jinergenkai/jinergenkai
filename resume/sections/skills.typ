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
    #v(0.3em)

    #skill_row("Core Expertise", (
      "Java", "Spring Boot", "Kafka", "Event-Driven", "Microservices", "Distributed Systems",
    ))
    #skill_row("Infrastructure", (
      "Kubernetes", "Docker", "Jenkins", "Robot Framework",
      "Prometheus", "Grafana", "ELK Stack", "Keycloak", "SonarQube",
      "Redis", "PostgreSQL",
    ))
    #skill_row("AI/Auto Systems", (
      "Computer Vision", "on-device AI (Pytorch, ONNX, TFLite)",
      "FastAPI", "OpenAI API", "n8n", "ComfyUI",
    ))
    #skill_row("Languages", (
      "Java", "Python", "TypeScript", "C++", "C#", "Dart",
      "Flutter", "React.js", "Tailwind CSS",
    ))
    #skill_row("Tools", (
      "Git","Jira", "Confluence", "Figma",
      "Claude Code", "Cursor", "Vim"
    ))
    #skill_row("Algorithms", (
      "Dynamic Programming", "Data Structures", "Graph Theory", "Combinatorics",
    ))
  ]
)

#v(0.3cm)
