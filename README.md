# MDARIK — University Volunteering & Events Platform

<div align="center">

[![Live Demo](https://img.shields.io/badge/🌐%20Live%20Demo-Visit%20Site-2ea44f?style=for-the-badge)](https://leen-web0.github.io/MDARIK-University-Volunteering-Events-Platform/)
[![GitHub Pages](https://img.shields.io/badge/Hosted%20on-GitHub%20Pages-181717?style=for-the-badge&logo=github)](https://leen-web0.github.io/MDARIK-University-Volunteering-Events-Platform/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)](https://leen-web0.github.io/MDARIK-University-Volunteering-Events-Platform/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-5.3-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)]()
[![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)]()

> 🎓 Graduation Project | King Saud University | 2025

**[🚀 Click here to view the live website →](https://leen-web0.github.io/MDARIK-University-Volunteering-Events-Platform/)**

</div>

---
> Graduation Project | King Saud University | 2025

MDARIK is a university-based web platform that connects students, faculty, and community organizations through volunteering opportunities, training courses, and campus events. The system includes a public-facing website and a role-based management dashboard for multiple user types.

---
<div align="center">
<img src="https://i.pinimg.com/originals/6d/be/77/6dbe776fb412b0ade2600846d434c669.gif" alt="Workspace" width="70%"/>
</div>
## 🌐 Live Preview

Open `Website/Project Website/index.html` in any browser — no server required.

---

## 📁 Project Structure

```
MDARIK- 2025-2(1642)/
│
├── Website/
│   └── Project Website/
│       ├── index.html                  # Landing page
│       ├── login.html                  # Login page
│       ├── aboutus.html                # About the platform
│       ├── contactus.html              # Contact page
│       ├── Upcomingevents.html         # Public events listing
│       ├── Volunteeropportunities.html # Public volunteer listings
│       ├── Trainingcourses.html        # Public training courses
│       │
│       ├── student/                    # Student dashboard
│       │   ├── available_opportunities.html
│       │   ├── my_participation.html
│       │   ├── certificates.html
│       │   ├── notifications.html
│       │   └── profile.html
│       │
│       ├── Adminstrtive/               # Administrative employee dashboard
│       │   ├── dashboard.html
│       │   ├── certificate_management.html
│       │   ├── manage_proposals.html
│       │   ├── reports.html
│       │   └── profile.html
│       │
│       ├── Faculty/                    # Faculty dashboard
│       │   ├── Courses_Manage.html
│       │   ├── Calendar.html
│       │   ├── Suggestion.html
│       │   └── profile.html
│       │
│       ├── organizer/                  # Event organizer dashboard
│       │   ├── Manage_Event.html
│       │   ├── Event_Status.html
│       │   ├── attendance.html
│       │   └── profile.html
│       │
│       ├── University Manager/         # University director dashboard
│       │   ├── dashboard.html
│       │   ├── Event_Approval.html
│       │   ├── Budget_Manage.html
│       │   └── Statistics_Analytics.html
│       │
│       ├── IT/                         # IT department dashboard
│       │   ├── usermanage.html
│       │   ├── roles.html
│       │   ├── maintenance.html
│       │   └── View_Logs.html
│       │
│       └── Support/                    # Support team dashboard
│           ├── dashboard.html
│           ├── tickets.html
│           ├── reply.html
│           └── reports.html
│
├── Database/
│   ├── mdark (3).sql                   # Full database schema & seed data
│   ├── ERD-422 (3).drawio              # Entity-Relationship Diagram
│   └── uml1.drawio                     # UML Class Diagram
│
├── Charts/
│   ├── All diagrams used in thr project.drawio   # All system diagrams
│   └── final_gantt_chart_with_end_dates.xlsx     # Project Gantt chart
│
├── Document/
│   ├── MDARIK-all-ch-final.docx        # Full project documentation
│   └── MDARIK-all-ch-final.pdf         # PDF version
│
├── Prototype/
│   └── Figma design-final.pdf          # UI/UX Figma prototype export
│
└── Survey/
    ├── S1.docx                          # Survey instrument (Word)
    └── survey.pdf                       # Survey instrument (PDF)
```

---

## ✨ Features

### Public Website
- Browse upcoming events, volunteer opportunities, and training courses
- About Us and Contact Us pages
- Responsive design with Bootstrap 5

### Student Portal
- View and register for available opportunities
- Track personal participation history
- Download digital certificates
- Manage profile and notifications

### Administrative Roles
| Role | Capabilities |
|------|-------------|
| **Student** | Register for events/opportunities, view certificates |
| **Faculty** | Manage courses, propose events, view calendar |
| **Organizer** | Create & manage events, track attendance, upload docs |
| **Administrative Employee** | Manage proposals, issue certificates, generate reports |
| **University Manager** | Approve events, manage budget, view analytics |
| **IT Department** | User management, role assignment, system logs, maintenance |
| **Support Team** | Handle tickets, reply to inquiries, view reports |

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| Frontend | HTML5, CSS3, JavaScript |
| UI Framework | Bootstrap 5.3 |
| Icons | Font Awesome 6.5 |
| Database | MySQL (schema in `/Database/mdark (3).sql`) |
| Design Tool | Figma |
| Diagrams | draw.io |

---

## 🗄️ Database Setup

1. Open your MySQL client (e.g., phpMyAdmin or MySQL Workbench).
2. Create a new database named `mdark`.
3. Import the schema and seed data:

```sql
CREATE DATABASE mdark;
USE mdark;
SOURCE Database/mdark\ \(3\).sql;
```

The ERD is available in `Database/ERD-422 (3).drawio` and as an SVG export alongside it.

---

## 🚀 Running the Project

This is a **static front-end prototype** — no backend server needed to browse the UI:

```bash
# Option 1: Open directly
open "Website/Project Website/index.html"

# Option 2: Use a local server (recommended for full navigation)
cd "Website/Project Website"
python3 -m http.server 8080
# Then visit http://localhost:8080
```

---

## 📊 System Diagrams

All diagrams are located in the `Charts/` folder and editable in [draw.io](https://app.diagrams.net):

- Context Diagram
- DFD Level 0 & Level 1
- Use Case Diagram
- ERD
- UML Class Diagram
- Activity Diagrams (10 flows)
- Sequence Diagrams (9 flows)

---

## 👥 Team

| Role | Description |
|------|-------------|
| Project Team | MDARIK Group — Semester 2025-2 (Group 1642) |
| Institution | King Saud University |

---

## 📄 License

This project was developed as a graduation project for academic purposes. All rights reserved © 2025 MDARIK Team.
