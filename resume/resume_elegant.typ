// Elegant Minimalist CV Template
// Inspired by modern professional design

#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  fill: rgb("#f5f5f5"),  // Light gray background
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
  fill: rgb("#2d2d2d"),
)

#set par(justify: true, leading: 0.7em)

// Color scheme
#let primary = rgb("#a8c5dd")      // Soft blue accent
#let secondary = rgb("#5a5a5a")    // Medium gray
#let accent = rgb("#1a1a1a")       // Dark text
#let divider = rgb("#d0d0d0")      // Light divider
#let timeline_color = secondary // Timeline blue

// Helper function for timeline dot
#let timeline_dot(color: timeline_color) = {
  circle(
    radius: 2.5pt,
    fill: color,
    // stroke: 2pt + white,
  )
}

// Helper function for timeline item (dot + line)
// , dx: -0.77cm, dy_dot: 0.1em, dy_line: 2em
#let timeline_item(height: 10em, color: timeline_color, dx: -0.77cm, dy_dot: 0.1em, dy_line: 2em) = {
  // Timeline dot
  place(
    left + top,
    dx: dx,
    dy: dy_dot,
    timeline_dot(color: color)
  )
  
  // Vertical line
  place(
    left + top,
    dx: dx + 0.05cm,
    dy: dy_line,
    box(
      width: 1pt,
      height: height,
      fill: color,
    )
  )
}

// Header with large name and transparent initials
#block(
  width: 100%,
  [
    // Large transparent initials in background
    #place(
      top + left,
      dx: 0cm,
      dy: -0.5cm,
      [
        #text(
          size: 120pt,
          fill: rgb("#e0e0e0"),
          weight: "bold",
          font: "New Computer Modern",
        )[NM]
      ]
    )
    
    #v(1.5cm)
    
    // First name - smaller, uppercase, spaced
    #text(
      size: 18pt,
      weight: "regular",
      fill: accent,
      tracking: 0.2em,
    )[Nguyen Manh Hung]
    
    #v(-0.10em)
    
    #v(0.5em)
    
    // Job title - spaced uppercase
    #text(
      size: 11pt,
      weight: "regular",
      fill: secondary,
      tracking: 0.25em,
    )[SOFTWARE ENGINEER]
  ]
)

#v(0.5cm)

// Two-column layout
#grid(
  columns: (25%, 70%),
  column-gutter: 1.0cm,
  
  // ============== LEFT COLUMN ==============
  [
    // CONTACT Section
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[📧 CONTACT]
        
        #v(0.8em)
        #line(length: 2cm, stroke: 0.5pt + accent)
        #v(1em)
        
        #set text(size: 9pt, fill: secondary)
        
        #grid(
          columns: (auto, 1fr),
          row-gutter: 0.8em,
          column-gutter: 0.5em,
          
          [*E*], [nmhung.works\@gmail.com],
          [*A*], [Ho Chi Minh City, Vietnam],
          [*P*], [+84 947 339 718],
          [*L*], [linkedin.com/in/jinergenkai],
          [*G*], [github.com/jinergenkai],
        )
      ]
    )
    
    // EDUCATION Section
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[🎓 EDUCATION]
        
        #v(0.8em)
        #line(length: 2cm, stroke: 0.5pt + accent)
        #v(1em)
        
        // Master/Bachelor 1
        #block(
          below: 1.2em,
          [
            #text(size: 10pt, weight: "bold", fill: accent)[BACHELOR DEGREE]
            #v(0.3em)
            #text(size: 9pt, fill: secondary)[FPT University HCMC]
            #v(0.2em)
            #text(size: 9pt, fill: secondary)[Information Technology]
            #v(0.2em)
            #text(size: 8.5pt, fill: secondary, style: "italic")[2020 - 2024 • GPA 8.0/10]
          ]
        )
        
        // Bachelor 2
        #block(
          below: 1.2em,
          [
            #text(size: 10pt, weight: "bold", fill: accent)[GIFTED PROGRAM]
            #v(0.3em)
            #text(size: 9pt, fill: secondary)[Nguyen Du High School]
            #v(0.2em)
            #text(size: 9pt, fill: secondary)[Informatics]
            #v(0.2em)
            #text(size: 8.5pt, fill: secondary, style: "italic")[2017 - 2020]
          ]
        )
      ]
    )
    
    // SKILLS Section
    #block(
      above: 0em,
      below: 1.5em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[💻 SKILLS]
        
        #v(0.8em)
        #line(length: 2cm, stroke: 0.5pt + accent)
        #v(1em)
        
        #text(size: 10pt, weight: "bold", fill: accent)[BACKEND]
        #v(0.4em)
        #set text(size: 9pt, fill: secondary)
        
        • Java & Spring Boot\
        • C\# & ASP.NET Core\
        • RESTful API Design\
        • Maven & Microservices
        
        #v(1em)
        
        #text(size: 10pt, weight: "bold", fill: accent)[TESTING & CI/CD]
        #v(0.4em)
        
        • Robot Framework\
        • JUnit & Integration Tests\
        • Jenkins Pipelines\
        • GitHub Actions
        
        #v(1em)
        
        #text(size: 10pt, weight: "bold", fill: accent)[FRONTEND]
        #v(0.4em)
        
        • Angular & React.js\
        • TypeScript\
        • Flutter Mobile\
        • TailwindCSS
        
        #v(1em)
        
        #text(size: 10pt, weight: "bold", fill: accent)[DEVOPS & TOOLS]
        #v(0.4em)
        
        • Kubernetes & Docker\
        • PostgreSQL & Redis\
        • Git & Version Control\
        • Kong API Gateway
        
        #v(1em)
        
        #text(size: 10pt, weight: "bold", fill: accent)[ALGORITHMS]
        #v(0.4em)
        
        • Competitive Programming\
        • Dynamic Programming\
        • Graph Theory\
        • Data Structures
      ]
    )
    
    // AWARDS Section
    #block(
      above: 0em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[🏆 AWARDS]
        
        #v(0.8em)
        #line(length: 2cm, stroke: 0.5pt + accent)
        #v(1em)
        
        #set text(size: 9pt, fill: secondary)
        
        #block(below: 0.8em)[
          • *ICPC 2023* - Third Prize\
          #h(0.5em) Vietnam Southern Region
        ]
        
        #block(below: 0.8em)[
          • *Meta Hacker Cup 2024*\
          #h(0.5em) Round 2 - Top 12% Global
        ]
        
        #block(below: 0.8em)[
          • *ICPC 2021* - Honorable Mention\
          #h(0.5em) Vietnam National
        ]
        
        #block(below: 0.8em)[
          • *National High School 2020*\
          #h(0.5em) Informatics - Honorable Mention
        ]
      ]
    )
  ],
  
  // ============== RIGHT COLUMN ==============
  [
    // PROFILE Section
    #block(
      above: 0em,
      below: 1.8em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[👤 PROFILE]
        
        #v(0.8em)
        #line(length: 100%, stroke: 0.5pt + divider)
        #v(1em)
        
        #set text(size: 10pt, fill: secondary)
        
        Software Engineer with 1.5+ years of experience specializing in enterprise Java development and test automation. Currently at Nokia developing Fixed Network Management Systems using Spring Boot, Angular, and Robot Framework. Strong background in competitive programming with expertise in building scalable backend systems, RESTful APIs, and CI/CD pipelines. ICPC medalist with proven track record in optimizing system performance and delivering high-quality software solutions.
      ]
    )
    
    // EXPERIENCE Section with Timeline
    #block(
      above: 0em,
      [
        #text(
          size: 11pt,
          weight: "bold",
          tracking: 0.15em,
          fill: accent,
        )[💼 EXPERIENCE]
        
        #v(0.8em)
        #line(length: 100%, stroke: 0.5pt + divider)
        #v(1em)
        
        // Job 1 - Nokia
        #block(
          below: 1.5em,
          [
            #timeline_item(height: 29em)
            
            #grid(
              columns: (1fr, auto),
              [
                #text(size: 10pt, weight: "bold", fill: accent)[SOFTWARE ENGINEER - FNMS TEAM]
              ],
              [
                #text(size: 9pt, fill: secondary, style: "italic")[Apr 2024 - Present]
              ]
            )
            
            #v(0.3em)
            #text(size: 10pt, fill: secondary)[Nokia | Ho Chi Minh City]
            
            #v(0.8em)
            
            #set text(size: 9.5pt, fill: secondary)
            
            Developed Fixed Network Management System (FNMS) for optical network device management using enterprise Java technologies. Led implementation of device software upgrade campaigns and automated testing infrastructure.
            
            #v(0.6em)
            
            #set text(size: 9pt)
            
            • Built comprehensive REST API endpoints for software campaign management using Spring Boot microservices with proper error handling, logging, and validation\
            • Implemented device software upgrade features with retry mechanisms and timeout handling for NT/LT board reachability verification across distributed network infrastructure\
            • Automated testing workflows using Robot Framework achieving 200+ test cases with 85% code coverage, reducing manual testing effort by 70%\
            • Optimized Jenkins CI/CD pipelines reducing build time by 30% through Maven caching strategies and parallel execution across multiple test suites\
            • Integrated XGBoost ML model with n8n workflows for automated test failure pattern detection and root cause analysis\
            • Collaborated with cross-functional teams using Agile methodologies, participating in sprint planning, daily standups, and code reviews
            
            #v(0.5em)
            #text(size: 8.5pt, fill: secondary, style: "italic")[
              Tech Stack: Java, Spring Boot, Angular, Robot Framework, Maven, Kubernetes, Jenkins, PostgreSQL
            ]
          ]
        )
        
        // Job 2 - FPT Software
        #block(
          below: 1.5em,
          [
            #timeline_item(height: 20em)
            
            #grid(
              columns: (1fr, auto),
              [
                #text(size: 10pt, weight: "bold", fill: accent)[SOFTWARE ENGINEER - ALOKA TEAM]
              ],
              [
                #text(size: 9pt, fill: secondary, style: "italic")[Aug 2023 - Apr 2024]
              ]
            )
            
                #v(0.3em)
                #text(size: 10pt, fill: secondary)[FPT Software | Ho Chi Minh City]
                
                #v(0.8em)
                
                #set text(size: 9.5pt, fill: secondary)
                
                Developed medical imaging software for ultrasound analysis focusing on vascular measurement tools and performance optimization.
                
                #v(0.6em)
                
                #set text(size: 9pt)
                
                • Implemented measurement and annotation features for blood flow analysis, vessel sizing, and wall thickness detection in medical imaging applications\
                • Optimized application performance by offloading heavy I/O operations from UI thread, reducing startup time by 40% and improving responsiveness\
                • Restructured API response formats to meet specific client requirements, ensuring efficient data delivery and seamless frontend integration
                
                #v(0.5em)
                #text(size: 8.5pt, fill: secondary, style: "italic")[
                  Tech Stack: C++, C\#, WPF, ASP.NET Core
                ]
              ]
            )
            
            // PROJECTS Subsection
            #v(1em)
            #text(
              size: 10pt,
              weight: "bold",
              tracking: 0.1em,
              fill: accent,
            )[📁 SELECTED PROJECTS]
            
            #v(0.8em)
            
            // Project 1
            #block(
              below: 1.2em,
              [
                #timeline_item(height: 7em)
                
                #grid(
                  columns: (1fr, auto),
                  [
                    #text(size: 10pt, weight: "bold", fill: accent)[Huynh Hanh Financial Management]
                  ],
                  [
                    #text(size: 9pt, fill: secondary, style: "italic")[Aug 2024 - Feb 2025]
                  ]
                )
                
                #v(0.5em)
                #set text(size: 9pt, fill: secondary)
                
                • Full-stack agricultural operations platform with AI chatbot integration using PhoBERT for Vietnamese NLP\
                • Built real-time truck weighing system with Web Serial API, data storage, receipt printing, and report export\
                • Developed crop lifecycle management with 3D GPS visualization for planting area tracking
                
                #v(0.3em)
                #text(size: 8.5pt, style: "italic")[ASP.NET Core, React.js, Electron.js, Material UI, Docker]
              ]
            )
            
            // Project 2
            #block(
              below: 1.2em,
              [
                #timeline_item(height: 6em)
                
                #grid(
                  columns: (1fr, auto),
                  [
                    #text(size: 10pt, weight: "bold", fill: accent)[SmartMicro IoT Platform]
                  ],
                  [
                    #text(size: 9pt, fill: secondary, style: "italic")[Feb 2024 - Apr 2024]
                  ]
                )
                
                #v(0.5em)
                #set text(size: 9pt, fill: secondary)
                
                • Mobile IoT platform for smart home device management with voice control capabilities\
                • Connected BLE devices via GATT/UART protocols for real-time device control\
                • Integrated OpenAI API with Flutter TTS for voice-activated home automation
                
                #v(0.3em)
                #text(size: 8.5pt, style: "italic")[Flutter, GetX, ASP.NET Core, SignalR, OpenAI API]
              ]
            )
      ]
    )
  ]
)

#v(1cm)

// Footer with page number or additional info (optional)
#align(center)[
  #text(size: 8pt, fill: secondary)[
    Portfolio: jine.blog • Updated December 2024
  ]
]
