// ==============================================================================
// ELEGANT MINIMALIST CV TEMPLATE
// Modern professional design for Nguyen Manh Hung
// ==============================================================================

#import "@preview/lucide:0.1.0": *


// ==============================================================================
// FONT SIZES - Giảm toàn bộ để tạo khoảng trống
// ==============================================================================

#let font_base = 8.5pt                // Base font size
#let font_name = 21.5pt             // Name in header
#let font_job_title = 9pt          // Job title in header
#let font_section = 12pt            // Section headers: CONTACT, EDUCATION, etc.
#let font_subsection = 10pt          // Subsection titles: BACKEND, project names, etc.
#let font_body = 8.5pt              // Body text and descriptions
#let font_detail = 8pt              // Detail text: dates, locations, contact info
#let font_small = 7.5pt             // Small text: tech stack, footer

#let font_computer = "New Computer Modern"
#let font_crimson = "Crimson Pro"
#let font_display = "Playfair Display"
// ==============================================================================
// COLOR SCHEME
// ==============================================================================

#let primary = rgb("#a8c5dd")       // Soft blue accent
#let secondary = rgb("#5a5a5a")     // Medium gray
#let accent = rgb("#1a1a1a")        // Dark text
#let divider = rgb("#d0d0d0")       // Light divider
#let text_color = rgb("#2d2d2d")      // Main text color
#let timeline_color = secondary     // Timeline color
#let background_color = rgb("#f5f5f5")


// ==============================================================================
// PAGE & TEXT CONFIGURATION
// ==============================================================================

#set page(
  paper: "a4",
  margin: (x: 1.5cm, bottom: 0.5cm, top: 2cm),
  fill: background_color,
)

#set text(
  font: font_crimson,
  size: font_base,
  fill: rgb("#2d2d2d"),
)

#set par(justify: true, leading: 0.7em)


// ==============================================================================
// TIMELINE COMPONENTS
// ==============================================================================

// Timeline dot component
#let dot(color: timeline_color) = {
  circle(radius: 1.5pt, fill: color)
}

// Timeline item with dot and vertical line
#let timeline_item(height: 10em, color: timeline_color, dx: -0.7cm, dy_dot: 0.15em, dx_dot: 0.13em, dy_line: 2em) = {
  // Dot
  place(left + top, dx: dx + dx_dot, dy: dy_dot, dot(color: color))

  // Vertical line
  place(
    left + top,
    dx: dx + 0.085cm,
    dy: dy_line,
    box(width: 0.5pt, height: height, fill: color),
  )
}

// ==============================================================================
// HEADER SECTION - Inspired by cv02.png design
// ==============================================================================

#block(
  width: 100%,
  [
    // Background initial letter with primary color
    // Red horizontal line after "Software Engineer"
    #place(
      top + left,
      dx: 4cm,
      dy: 1.5cm,
      line(length: 100% - 4.4cm, stroke: 20pt + primary.lighten(70%)),
    )
    #place(
      top + left,
      dx: -0.3cm,
      dy: -0.8cm,
      text(
        size: 110pt,
        fill: primary.lighten(50%), // Soft blue, very light
        weight: "bold",
        font: font_computer,
      )[H#text(size: 10pt, fill: accent, weight: "bold", font: "New Computer Modern")[#h(2.5em)Software Engineer]
        #text(
          size: 30pt,
          fill: background_color,
          weight: "bold",
          font: "New Computer Modern",
        )[#h(4.7em)Jiner#box(baseline: 15%, image("assets/smille-sunglasses.svg", height: 1em))]

      ],
    )

    // Vertical divider line
    #place(
      top + left,
      dx: 3.8cm,
      dy: -0.8cm,
      line(length: 2.7cm, stroke: 2pt + primary.lighten(50%), angle: 90deg),
    )

    #v(.8cm)

    // Name
    #text(
      size: font_name,
      weight: "bold",
      fill: accent,
      font: font_display,
      tracking: 0.23em,
    )[Nguyen Manh Hung]
    #v(0.1cm)
    // Job title
    #text(
      size: font_job_title,
      weight: "regular",
      fill: secondary,
      // tracking: 0.05em,
    )[With 2+ years of experience in enterprise Java and backend engineering, Integrating AI into scalable systems. \
      ICPC medalist, currently developing large-scale Fixed Network Management Systems at work.]
  ],
)

#v(0.5cm)

// ==============================================================================
// MAIN CONTENT - TWO COLUMN LAYOUT
// ==============================================================================

#grid(
  columns: (30%, 65%),
  column-gutter: 0.5cm,

  // ============================================================================
  // LEFT COLUMN
  // ============================================================================
  [
    // CONTACT SECTION
    #block(
      above: 0em,
      below: 1.5em,
      [
        #v(0.5em)
        #line(length: 2cm, stroke: 0.5pt + accent)
        #v(0.7em)

        #set text(size: font_detail, fill: secondary)

        #grid(
          columns: (auto, 1fr),
          row-gutter: 0.8em,
          column-gutter: 0.5em,

          [#lucide-icon("mail", size: 7pt)], [#link("mailto:nmhung.works@gmail.com")[nmhung.works\@gmail.com]],
          [#lucide-icon("map-pin", size: 7pt)], [Ho Chi Minh City, Vietnam],
          [#lucide-icon("phone", size: 7pt)], [#link("tel:+84947339718")[+84 947 339 718]],
          // [#lucide-icon("linkedin", size: 7pt)], [#link("https://linkedin.com/in/jinergenkai")[linkedin.com/in/jinergenkai]],

          [#lucide-icon("github", size: 7pt)], [#link("https://github.com/jinergenkai")[github.com/jinergenkai]],
        )
      ],
    )
    #v(1em)
    // EDUCATION SECTION
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: font_section,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[#box(baseline: 15%)[#lucide-icon("graduation-cap")] EDUCATION]
        #v(-0.7em)
        #line(length: 3.4cm, stroke: 0.5pt + accent)

        // Bachelor Degree
        #block(
          below: 1.2em,
          [
            #grid(
              columns: (1fr, auto),
              [#text(size: font_detail, weight: "bold", fill: accent)[• Bachelor of IT]],
              pad(right: 3.5em)[#align(right)[#text(size: font_small, fill: secondary, style: "italic")[2020 - 2024]]],
            )
            #v(-0.2em)
            #text(size: font_detail, fill: secondary)[FPT University, HCMC]
            #v(-0.1em)
            #text(size: font_small, fill: secondary, style: "italic")[GPA 3.2/4.0 • 100% Scholarship]
          ],
        )

        // Gifted Program
        #block(
          [
            #grid(
              columns: (1fr, auto),
              [#text(size: font_detail, weight: "bold", fill: accent)[• High School for Gifted]],
              pad(right: 3.5em)[#align(right)[#text(size: font_small, fill: secondary, style: "italic")[2017 - 2020]]],
            )
            #v(-0.2em)
            #text(size: font_detail, fill: secondary)[Nguyen Du High School (Informatics)]
          ],
        )
      ],
    )
    #v(1em)
    // AWARDS SECTION
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: font_section,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[#box(baseline: 15%)[#lucide-icon("award")] AWARDS]
        #v(-0.7em)
        #line(length: 2.6cm, stroke: 0.5pt + accent)

        #set text(size: font_detail, fill: secondary)

        #block(below: 1.1em)[
          #link("https://huynhhanh.com")[• *ICPC 2023* - Third Prize\
          #h(0.5em) Vietnam Southern Region #box(baseline: 15%)[#text(fill: primary)[#lucide-icon("external-link", size: 7pt)]]]
        ]

        #block(below: 1.1em)[
          #link("https://huynhhanh.com")[• *Meta Hacker Cup 2025*\
          #h(0.5em) Round 2 - Top 12% Global #box(baseline: 15%)[#text(fill: primary)[#lucide-icon("external-link", size: 7pt)]]]
        ]

        #block(below: 1.1em)[
          #link("https://huynhhanh.com")[• *ICPC 2021* - Honorable Mention\
          #h(0.5em) Vietnam National #box(baseline: 15%)[#text(fill: primary)[#lucide-icon("external-link", size: 7pt)]]]
        ]

        #block(below: 1.1em)[
          #link("https://huynhhanh.com")[• *National Excellent Student 2020*\
          #h(0.5em) Informatics - Honorable Mention #box(baseline: 15%)[#text(fill: primary)[#lucide-icon("external-link", size: 7pt)]]]
        ]
      ],
    )
    #v(1em)

    // SKILLS SECTION
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: font_section,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[#box(baseline: 15%)[#lucide-icon("bow-arrow")] SKILLS]
        #v(-0.7em)
        #line(length: 2.2cm, stroke: 0.5pt + accent)

        #set text(size: font_detail, fill: secondary)

        // Backend Skills
        #text(size: font_subsection, weight: "bold", fill: accent)[BACKEND]

        • Java & Spring Boot\
        • Maven & Microservices


        // Algorithms Skills
        #text(size: font_subsection, weight: "bold", fill: accent)[ALGORITHMS]

        • Competitive Programming\
        • Dynamic Programming\
        • Graph Theory\
        • Data Structures


        // DevOps & Tools
        #text(size: font_subsection, weight: "bold", fill: accent)[DEVOPS]

        • AWS Cloud Services (EC2, S3)\
        • Kubernetes & Docker\
        • PostgreSQL & Redis\
        • Robot Framework\
        • Jenkins Pipelines\

        // Frontend Skills
        #text(size: font_subsection, weight: "bold", fill: accent)[FRONTEND]

        • Flutter Mobile\
        • Angular & React.js\
        • TypeScript\
      ],
    )
    #v(3.1em)

  ],

  // ============================================================================
  // RIGHT COLUMN
  // ============================================================================
  [


    // EXPERIENCE SECTION
    #block(
      above: 3em,
      [
        #text(
          size: font_section,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[#box(baseline: 15%)[#lucide-icon("briefcase")] EXPERIENCE]
        // #v(-0.7em)
        #line(length: 100%, stroke: 0.5pt + divider)
        // #v(0.7em)

        // TMA Solutions Position
        #block(
          below: 1.5em,
          [
            #timeline_item(height: 35em)

            #grid(
              columns: (1fr, auto),
              [#text(size: font_subsection, weight: "bold", fill: accent)[TMA Solutions - Backend Engineer]],
              [#text(size: font_detail, fill: secondary, style: "italic")[Apr 2024 - Present]],
            )

            // #v(0.3em)
            // #text(size: font_body, fill: secondary)[Ho Chi Minh City]
            #v(0.8em)

            // Sub-project 1: Nokia Altiplano
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
              Tech: Java, Spring Boot, Angular, Kafka, Helm, Kubernetes, Jenkins, Robot Framework, ELK, Prometheus, Grafana
            ]

            #v(0.8em)

            // Sub-project 2: Agentic Vision
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
              Tech: Python, FastAPI, React, Docker
            ]
          ],
        )

        // FPT Software Position
        #block(
          below: 1.5em,
          [
            #timeline_item(height: 15em)

            #grid(
              columns: (1fr, auto),
              [#text(size: font_subsection, weight: "bold", fill: accent)[FPT Software - Software Engineer]],
              [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]],
            )

            // #v(0.3em)
            // #text(size: font_body, fill: secondary)[Ho Chi Minh City]
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
        #v(1.5em)

        // PROJECTS SUBSECTION
        #text(
          size: font_subsection,
          weight: "bold",
          tracking: 0.1em,
          fill: accent,
        )[#box(baseline: 15%)[#lucide-icon("user")] PROJECTS]
        #line(length: 100%, stroke: 0.5pt + divider)

        // Project 1: Huynh Hanh Financial Management
        #block(
          below: 1.2em,
          [
            #timeline_item(height: 7em)

            #grid(
              columns: (1fr, auto),
              [#text(size: font_subsection, weight: "bold", fill: accent)[#link(
                "https://huynhhanh.com",
              )[Huynh Hanh Financial Management]]],
              [#text(size: font_detail, fill: secondary, style: "italic")[Aug 2024 - Feb 2025]],
            )
            #v(0.2em)
            #text(size: font_small, fill: primary)[#link("https://huynhhanh.com")[→ huynhhanh.com]]

            #v(0.5em)
            #set text(size: font_detail, fill: secondary)

            • Full-stack agricultural platform with AI chatbot integration using PhoBERT for Vietnamese NLP\
            • Built real-time truck weighing system with Web Serial API, receipt printing, and report export\
            • Developed crop lifecycle management with 3D GPS visualization for planting area tracking

            #v(0.3em)
            #text(size: font_small, style: "italic")[ASP.NET Core, React.js, Electron.js, Material UI, Docker]
          ],
        )

        // Project 2: SmartMicro IoT Platform
        #block(
          below: 1.2em,
          [
            #timeline_item(height: 6em)

            #grid(
              columns: (1fr, auto),
              // TODO: Add github link
              [#text(size: font_subsection, weight: "bold", fill: accent)[SmartMicro IoT Platform]],
              [#text(size: font_detail, fill: secondary, style: "italic")[Feb 2024 - Apr 2024]],
            )

            #v(0.5em)
            #set text(size: font_detail, fill: secondary)

            • Mobile IoT platform for smart home device management with voice control capabilities\
            • Connected BLE devices via GATT/UART protocols for real-time device control\
            • Integrated OpenAI API with Flutter TTS for voice-activated home automation

            #v(0.3em)
            #text(size: font_small, style: "italic")[Flutter, GetX, ASP.NET Core, SignalR, OpenAI API]
          ],
        )
      ],
    )
  ],
)

// ==============================================================================
// FOOTER
// ==============================================================================

#let today = datetime.today()
#align(center)[
  #text(size: font_small, fill: secondary)[
    Portfolio updated on #today.display("[month repr:long] [day], [year]")
  ]
]
