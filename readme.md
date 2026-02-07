# 🧠 Postgres Lab

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?logo=postgresql&logoColor=white)](https://www.postgresql.org/)

Hands-on PostgreSQL and SQL practice environment featuring real-world schemas, complex queries, and backend-focused architecture examples.

## 📌 Purpose

This repository serves as a **dedicated learning lab** designed to bridge the gap between basic tutorials and production-ready database engineering. The focus is on building a "database-first" mindset by mastering:

*   **Deep SQL Foundations:** Writing performant and readable raw SQL.
*   **Schema Design:** Architecting robust data structures with proper normalization.
*   **Data Integrity:** Leveraging constraints, indexes, and ACID transactions.
*   **Backend Integration:** Understanding how databases support scalable application logic.

## 🛠️ Tech Stack

*   **Database:** PostgreSQL
*   **Language:** SQL
*   **Tools:** VS Code (PostgreSQL extension) & Local PostgreSQL Instance

> **Note:** This lab intentionally avoids ORMs (like Prisma) and backend frameworks in the initial phases to ensure mastery of core SQL fundamentals before adding layers of abstraction.

## 📂 Repository Structure

```text
postgres-lab/
├── sql/                # Schemas, seed data, and query scripts
│   ├── 01_students.sql
│   ├── 02_queries.sql
│   └── ...
├── notes/              # Daily learning logs and conceptual deep-dives
│   ├── day-01.md
│   └── ...
├── .gitignore          # Environment and tool exclusions
└── README.md           # Project documentation
```

## ✅ Roadmap & Coverage

*   [x] **DDL (Data Definition Language):** Creating tables with primary/foreign keys and constraints.
*   [x] **DML (Data Manipulation Language):** Advanced CRUD operations and data seeding.
*   [ ] **Analytical Queries:** Filtering, sorting, grouping, and aggregations.
*   [ ] **Relational Logic:** Joins, subqueries, and Common Table Expressions (CTEs).
*   [ ] **Database Version Control:** Managing schema changes through versioned SQL scripts.

## 🚀 Getting Started

To use this lab locally, follow these steps:

1.  **Prerequisites:** Install [PostgreSQL](https://www.postgresql.org/download/) on your machine.
2.  **Environment Setup:**
    *   Open the project in VS Code.
    *   Install the **PostgreSQL extension** (by Microsoft or Chris Kolkman).
3.  **Execution:**
    *   Connect to your local server instance.
    *   Execute the `.sql` files found in the `sql/` directory sequentially.
4.  **Observation:** Use your preferred GUI (pgAdmin, DBeaver) or VS Code to inspect the changes and verify data integrity.

## 🎯 Learning Philosophy

*   **SQL First, Tools Later:** Understand the engine before using an ORM.
*   **Production-Ready Thinking:** Prioritize data integrity and performance over convenience.
*   **Clarity over Cleverness:** Write SQL that is maintainable and easy for teams to audit.
*   **Incremental Progress:** One meaningful commit and one new concept mastered every day.

## 📅 Progress Tracking

This repository follows a **daily learning approach**. Check the `notes/` directory for daily logs regarding specific SQL challenges solved and architectural patterns explored.

## 📖 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details. Feel free to use this for your own learning and experimentation.
