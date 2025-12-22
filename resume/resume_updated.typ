// Modern Minimalist CV Template
// Optimized for ATS and visual appeal

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
  fill: rgb("#e8e8e8"),  // Gray background
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
  fill: rgb("#1a1a1a"),
)

#set par(justify: true, leading: 0.65em)

// Color scheme - matching reference design
#let primary = rgb("#f4c542")      // Yellow accent
#let secondary = rgb("#666666")    // Medium gray
#let accent = rgb("#1a1a1a")       // Dark text
#let bg-color = rgb("#e8e8e8")     // Light gray background

// Helper functions
#let icon(name, link: none) = {
  let icon-content = box(
    baseline: 15%,
    height: 9pt,
    image("icons/" + name + ".svg")
  )
  if link != none {
    link(link)[#icon-content]
  } else {
    icon-content
  }
}

#let section-title(title) = {
  text(
    size: 13pt,
    weight: "bold",
    fill: accent,  // Dark text instead of blue
    upper(title)
  )
  v(-0.2em)
  line(length: 100%, stroke: 0.5pt + primary)  // Yellow line
  v(0.5em)
}

#let job-title(company, role, period, location: none) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 11pt)[#company],
    text(fill: secondary, size: 9pt, style: "italic")[#period],
  )
  v(-0.3em)
  text(size: 10pt, fill: secondary)[#role]
  if location != none {
    text(size: 9pt, fill: secondary)[ • #location]
  }
  v(0.3em)
}

#let skill-category(category, items) = {
  text(weight: "bold", size: 9.5pt)[#category: ]
  text(size: 9.5pt)[#items]
  v(0.3em)
}

// Header with yellow accent line
#grid(
  columns: (auto, 1fr),
  column-gutter: 2em,
  
  // Left side - placeholder for avatar (you'll add your image)
  [
    #box(
      width: 8cm,
      height: 8cm,
      fill: rgb("#d0d0d0"),
      radius: 0pt,
      [
        #align(center + horizon)[
          #text(size: 10pt, fill: rgb("#888888"))[
            Your Photo Here\
            #text(size: 8pt)[(Replace with your avatar)]
          ]
        ]
      ]
    )
  ],
  
  // Right side - Name with yellow bar
  [
    #v(2.5cm)
    
    // Yellow bar behind first name
    #block(
      fill: primary,
      inset: (x: 1em, y: 0.5em),
      width: 100%,
      [
        #text(
          size: 36pt,
          weight: "bold",
          fill: accent,
          tracking: 0.15em,
        )[NGUYỄN MẠNH]
      ]
    )
    
    #v(-0.3em)
    
    // Last name
    #text(
      size: 36pt,
      weight: "bold",
      fill: accent,
      tracking: 0.15em,
    )[HÙNG]
    
    #v(0.5em)
    
    // Job title
    #text(
      size: 13pt,
      weight: "semibold",
      fill: accent,
      tracking: 0.2em,
    )[SOFTWARE ENGINEER]
    
    #v(1em)
    
    // Contact info - vertical layout with icons
    #set text(size: 10pt, fill: accent)
    
    #grid(
      columns: (auto, 1fr),
      row-gutter: 0.5em,
      column-gutter: 1em,
      
      [📱], [+84 947 339 718],
      [📧], [nmhung.works\@gmail.com],
      [💼], [linkedin.com/in/jinergenkai],
      [🔗], [github.com/jinergenkai],
    )
  ]
)

#v(1em)
#line(length: 100%, stroke: 0.5pt + secondary)
#v(0.8em)

// Two-column layout
#grid(
  columns: (65%, 35%),
  column-gutter: 1.2em,
  
  // Left column - Main content
  [
    // Professional Summary
    #section-title("Professional Summary")
    Software Engineer with 1.5+ years of experience specializing in enterprise Java development and test automation. Currently at Nokia developing Fixed Network Management Systems using Spring Boot, Angular, and Robot Framework. Strong background in competitive programming (ICPC medalist) with expertise in building scalable backend systems, RESTful APIs, and CI/CD pipelines. Proven track record in optimizing system performance and delivering high-quality software solutions.
    
    #v(0.8em)
    
    // Work Experience
    #section-title("Work Experience")
    
    #job-title("Nokia", "Software Engineer - FNMS Team", "04/2024 – Present", location: "Ho Chi Minh City")
    
    *Tech Stack:* Java, Spring Boot, Angular, Robot Framework, Maven, Kubernetes, Jenkins, PostgreSQL
    
    - Developed and maintained Fixed Network Management System (FNMS) for optical network device management using Java Spring Boot microservices architecture
    - Implemented device software upgrade campaign features with retry mechanisms and timeout handling for NT/LT board reachability verification
    - Built comprehensive REST API endpoints for software campaign management with proper error handling and logging
    - Automated testing workflows using Robot Framework with 200+ test cases achieving 85% code coverage
    - Optimized Jenkins CI/CD pipelines reducing build time by 30% through Maven caching and parallel execution
    - Debugged complex production issues in Kubernetes deployments, analyzing logs and implementing monitoring solutions
    - Integrated XGBoost ML model with n8n workflows for automated test failure pattern detection
    - Collaborated with cross-functional teams using Agile methodologies, participating in sprint planning and code reviews
    
    #v(0.6em)
    
    #job-title("FPT Software", "Software Engineer - Aloka Team", "08/2024 – 04/2025", location: "Ho Chi Minh City")
    
    *Tech Stack:* C++, C, WPF, ASP.NET Core
    
    - Developed medical imaging software for ultrasound analysis focusing on vascular measurement tools
    - Implemented measurement and annotation features for blood flow analysis, vessel sizing, and wall thickness detection
    - Optimized application performance by offloading heavy I/O operations from UI thread, reducing startup time by 40%
    - Restructured API response formats improving data delivery efficiency and frontend integration
    
    #v(0.8em)
    
    // Projects
    #section-title("Selected Projects")
    
    *Huynh Hanh Financial Management System* #h(1fr) _08/2024 – 02/2025_
    
    Full-stack agricultural operations management platform with AI chatbot integration
    - Built admin panel for real-time truck weighing monitoring using Web Serial API
    - Developed crop lifecycle management system with 3D GPS visualization
    - Integrated PhoBERT model for Vietnamese NLP chatbot assistance
    - *Tech:* ASP.NET Core, React.js, Electron.js, Material UI, Docker, Nginx
    
    #v(0.4em)
    
    *SmartMicro – IoT Smart Home Platform* #h(1fr) _02/2024 – 04/2024_
    
    Mobile IoT platform for smart home device management with voice control
    - Connected BLE devices via GATT/UART protocols for real-time control
    - Implemented SignalR for real-time data streaming and chart visualization  
    - Integrated OpenAI API with Flutter TTS for voice-activated home automation
    - *Tech:* Flutter, GetX, ASP.NET Core, SignalR, OpenAI API
    
    #v(0.4em)
    
    *Ut Nhan Pharmacy Inventory System* #h(1fr) _02/2024 – 10/2024_
    
    Enterprise inventory management system for pharmacy chain operations
    - Built Flutter mobile app with barcode scanning for inventory tracking
    - Implemented CRUD operations and collaborated on advanced backend features
    - *Tech:* ASP.NET Core, React, MedusaUI, Flutter
    
  ],
  
  // Right column - Skills & Education
  [
    // Skills
    #section-title("Technical Skills")
    
    #skill-category("Backend", "Java, Spring Boot, C#, ASP.NET Core, Entity Framework, RESTful API, Maven")
    
    #skill-category("Testing & QA", "Robot Framework, JUnit, Integration Testing, Test Automation")
    
    #skill-category("Frontend", "Angular, React.js, TypeScript, Flutter, TailwindCSS, Material UI")
    
    #skill-category("Database", "PostgreSQL, SQL Server, Redis, Query Optimization")
    
    #skill-category("DevOps & Tools", "Kubernetes, Docker, Jenkins, Git, GitHub Actions, CI/CD, nginx")
    
    #skill-category("Cloud & Infra", "Kong API Gateway, Kafka, SignalR, n8n Workflow")
    
    #skill-category("Programming", "C/C++, Python, Java, JavaScript/TypeScript")
    
    #skill-category("Algorithms", "Dynamic Programming, Graph Theory, Data Structures, Competitive Programming")
    
    #skill-category("AI/ML", "XGBoost, PhoBERT, OpenAI API, TensorFlow (Basic)")
    
    #skill-category("Languages", "English (TOEIC 745), Vietnamese (Native)")
    
    #v(0.8em)
    
    // Education
    #section-title("Education")
    
    *FPT University HCMC*\
    _2020 – 2024_
    
    Bachelor of Information Technology\
    GPA: 8.0/10 • 100% Scholarship
    
    #v(0.5em)
    
    *Nguyen Du High School*\
    _2017 – 2020_
    
    Gifted Program - Informatics\
    National Informatics Team\
    Dak Lak Province
    
    #v(0.8em)
    
    // Awards
    #section-title("Awards")
    
    *ICPC 2023*\
    Third Prize\
    Vietnam Southern Region
    
    #v(0.3em)
    
    *ICPC 2021*\
    Honorable Mention\
    Vietnam National
    
    #v(0.3em)
    
    *Meta Hacker Cup 2024*\
    Round 2 Qualifier\
    Top 12% Globally
    
    #v(0.3em)
    
    *National High School 2020*\
    Honorable Mention\
    Informatics Competition
    
    #v(0.8em)
    
    // Interests
    #section-title("Interests")
    
    Competitive Programming, System Design, Open Source Contribution, Tech Blogging (jine.blog), Algorithm Optimization
  ]
)
