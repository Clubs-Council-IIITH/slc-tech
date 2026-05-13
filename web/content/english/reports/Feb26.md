---
title: "Monthly Progress report - February 2026"
meta_title: ""
description: ""
date: 2026-05-13T13:30:00Z
image: "/images/blogs/february.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — February 2026

### Team Members

- Bhav Beri (Tech Lead)
- Dileepkumar Adari (Web Administrator)
- Abhiram Tilak (System Administrator)
- Evan Bijoy (Web + Design Administrator)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)

### Clubs Council Website

- Updated all packages in Clubs-Council-website (across all the microservices) and Portals repo (done every 6 months).
- Move away from deprecated next-mdx-remote library. Now we use next-mdx-remote-client. [d103853](https://github.com/Clubs-Council-IIITH/web/commit/d103853122dff84a67b961dc8cdf701e05db0d16)
- Reduce the Dockerfile to reduce the ldap installation dependencies: [554863a](https://github.com/Clubs-Council-IIITH/users/commit/554863a45229ac771924c66b56c2f1a742357e05)
  - Reduces Docker image dependencies for LDAP integration by removing unnecessary packages.
  - Replaces heavy build dependencies (e.g., slapd, python3-dev, libssl-dev) with minimal required LDAP libraries.
  - Simplifies package installation by limiting to essential tools like ldap-utils, libsasl2-dev, and libldap2-dev.
  - Optimizes the final image by installing only runtime dependencies (libldap2) with --no-install-recommends.
  - Improves build efficiency and reduces image size by cleaning up unused package lists.

![img.png](/images/reports/Feb26/img.png)

- Refactor Web Dockerfiles into one single docker file with multiple stages:
  - Consolidated multiple Dockerfiles (including dev.Dockerfile) into a single multi-stage Dockerfile for the web service, enabling environment-specific builds via --target.
  - Implemented distinct build stages (base, dev, staging, prod) using Docker BuildKit for optimized and reusable image construction.
  - Updated docker-compose configurations to use build.target for selecting appropriate environments instead of separate Dockerfiles.
- Remove the local mounts and convert them to global variables:
  - Replaced all local bind mounts with COPY instructions inside Dockerfiles to ensure fully self-contained and portable builds.
- Move away from pip to UV for dependency management:
  - Integrated UV as the dependency manager across all services, removing reliance on pip and updating Dockerfiles in subgraphs/ and apis/ accordingly.
  - Configured separate Nginx stages for staging and prod, copying environment-specific configuration files directly within the Docker build process.
![img_4.png](/images/reports/Feb26/img_4.png)
- Added a button to show or hide the deleted events in the All Events Table [Web PR #177](https://github.com/Clubs-Council-IIITH/web/pull/177)
![img_3.png](/images/reports/Feb26/img_3.png)

#### IIIT Main site

- Add year tab in Achievements and Gallery Pages
![img_5.png](/images/reports/Feb26/img_5.png)
![img_6.png](/images/reports/Feb26/img_6.png)

- Disable Links in IIIT Website and Add admission page links into main website and Update Admissions Links on Main Website
![img_7.png](/images/reports/Feb26/img_7.png)
![img_9.png](/images/reports/Feb26/img_9.png)
![img_10.png](/images/reports/Feb26/img_10.png)

#### Clubs Server Migration (In Progress)

- Setup git server in the new `clubs-dev.iiit.ac.in` server.
- Setup nginx and docker.
- Copied the config files.

#### Micellaneous

- Make a list of gmail addresses subscribed to the life list.
![img_11.png](/images/reports/Feb26/img_11.png)
- Help Sudha Ma'am embed youtube videos in blogs website
![img_8.png](/images/reports/Feb26/img_8.png)

- RND Showcase website, change poster and banner
![img_12.png](/images/reports/Feb26/img_12.png)

### IMS-IIITH

#### Frontend

- Introduces a complete meal feedback system—adding a rating modal UI, backend API integration, and logic to allow users to submit and track feedback within a defined post-meal time window. [PR #299](https://github.com/IMS-IIITH/frontend/pull/299/changes)
- Simplifies and corrects feedback window logic by removing meal-time–based calculations and instead validating feedback eligibility using a date-based time range, while also reducing redundant API calls and conditions. [PR #319](https://github.com/IMS-IIITH/frontend/pull/319)
- Fixes incorrect mess name display on the rates screen by fetching mess metadata and mapping mess IDs to their proper names instead of relying on string formatting. [PR #325](https://github.com/IMS-IIITH/frontend/pull/325/changes)
- Adds a dedicated mess cache management system with a settings UI that lets users view cache metadata (timestamps/expiry) and selectively or fully clear cached mess-related data. [PR #326](https://github.com/IMS-IIITH/frontend/pull/326/changes)
- Adds H1/H2 semester awareness to timetable logic, filtering and highlighting only currently active courses across fetch, notification, and UI layers while improving type reuse and display clarity. [be96198](https://github.com/IMS-IIITH/frontend/commit/be9619891c7ce445817a6c28ab190e73110de831)
- Adds a fee payment details feature with a dedicated screen, API integration, and caching layer to fetch, display, and persist semester-wise fee breakdowns with refresh and fallback support. [PR #328](https://github.com/IMS-IIITH/frontend/pull/328/changes)
- Introduces a credits dashboard that aggregates and displays category-wise earned credits with course-level breakdowns by integrating credits and course APIs into an interactive, accordion-based UI. [PR #333](https://github.com/IMS-IIITH/frontend/pull/333/changes)
- Replaces raw mess IDs with full, user-friendly mess names across dashboard and registrations by integrating mess metadata lookup with fallback formatting. [PR #332](https://github.com/IMS-IIITH/frontend/pull/332/changes)
- Moves skip-window logic from hardcoded rules to backend-driven configuration, unifying eligibility checks for skipping, editing, and meal actions based on dynamic server-provided timing constraints. [PR #331](https://github.com/IMS-IIITH/frontend/pull/331/changes)
- Improves notification accuracy by excluding skipped meals (via metadata) from next-meal detection and refining attendance alert message formatting. [82b973e](https://github.com/IMS-IIITH/frontend/commit/82b973e52de9bebeb3eaf60c51c4bb4c2d7ac4ef)
- Enhances the mess dashboard by adding support for extras, improving status handling (including skipped/ongoing states), updating API response handling, and introducing caching for both registrations and extras. [PR #336](https://github.com/IMS-IIITH/frontend/pull/336/changes)
- Implements a full-featured couriers module with paginated, searchable APIs and a two-tab UI (registered vs unregistered) to track and manage student package deliveries. [PR #337](https://github.com/IMS-IIITH/frontend/pull/337)

#### Backend

- Improves backend resilience by automatically reinitializing the IMS HTTP client on connection failures and refining middleware exception routes. [PR #49](https://github.com/IMS-IIITH/backend/pull/49/changes)
- Adds backend support for mess crowd tracking by aggregating real-time scan and capacity data across messes into a unified per-billing-group crowd overview endpoint. [PR #52](https://github.com/IMS-IIITH/backend/pull/52/changes)
- Implements backend courier APIs with authenticated, paginated, and searchable endpoints for registered and unregistered packages, including upstream service integration, validation, and error handling. [PR #53](https://github.com/IMS-IIITH/backend/pull/53/changes)
- Updates the public webpage by refining feature listings and icons to reflect newly added functionalities (e.g., fees, mess crowd, couriers) and improve overall presentation consistency. [PR #54](https://github.com/IMS-IIITH/backend/pull/54/changes)


#### Ongoing work

- Merging multiple queries at once
- Gallery page lazy loading
- Inventory management plan

