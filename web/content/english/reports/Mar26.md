---
title: "Monthly Progress report - March 2026"
meta_title: ""
description: ""
date: 2026-05-14T07:30:00Z
image: "/images/blogs/march.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — March 2026

### Team Members

- Bhav Beri (Tech Lead)
- Dileepkumar Adari (Web Administrator)
- Abhiram Tilak (System Administrator)
- Evan Bijoy (Web + Design Administrator)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)

### Clubs Council Website

- Caching in Gallery (work in progress):
  * **Shift from API-based to local image sourcing:** Replaces remote gallery fetch with filesystem-based loading (`fs + public/gallery_images`) and dynamically computes image dimensions using `image-size`.
  * **Refactors image data structure:** Moves from simple URL arrays to structured objects `{ url, width, height }`, enabling proper responsive rendering with Next.js `<Image>`.
  * **Simplifies and optimizes masonry component:** Removes skeleton loading UI and redundant logic, aligning rendering with precomputed image metadata and reducing runtime layout shifts.
  * **Fixes modal and image rendering consistency:** Updates `ImageModal` and related components to correctly use the new object-based image format, preventing incorrect `src` usage.

BEFORE:
![img_13.png](/images/reports/Mar26/img_13.png)

AFTER:
![img_15.png](/images/reports/Mar26/img_15.png)  

- Combining multiple queries in a file into one:
  - Introduces query batching via combineQuery: Replaces multiple sequential GraphQL calls with a single combined request, reducing network overhead and improving page load performance.
  - Refactors data fetching across pages: Consolidates related queries (e.g., user, events, memberships, reports) into unified queries, simplifying data flow and reducing redundant client calls.
  - Eliminates duplicated requests and logic: Removes repeated getClient().query(...) calls and merges response handling, leading to cleaner and more maintainable code.

![img_16.png](/images/reports/Mar26/img_16.png)

- Refactoring variable names in the backend and use consistent snake case:
  * **Large-scale refactor for naming consistency:** Migrates codebase from camelCase to snake_case (e.g., `getMember → get_member`, `triggerMail → trigger_mail`) and standardizes type/class names across modules.
  * **Centralized timezone handling:** Replaces scattered `timezone` usage with a unified `TIMEZONE` constant, improving consistency in datetime operations across mutations, queries, and scripts.
  * **Type system cleanup and normalization:** Renames and consolidates model/types (e.g., `BudgetType → Budget_Type`, `HttpUrlString → Http_Url_String`) to enforce clearer schema definitions and reduce duplication.
  * **General code hygiene and maintainability improvements:** Updates utility functions, mailing logic, and scripts to align with new conventions, removes redundancy, and improves readability without major functional changes.
- Updates the Next.js development and production server ports from 80 to 3000 in package.json scripts, likely to avoid permission issues or align with common local dev defaults. [8ffb00a](https://github.com/Clubs-Council-IIITH/web/commit/8ffb00a555b57d952c11e263463272026d242f06)
- Python backend updates we have updated the python version from 3.13 to 3.14 and this required updating packages. [PR #27](https://github.com/Clubs-Council-IIITH/members/pull/27/changes), [PR #33](https://github.com/Clubs-Council-IIITH/clubs/pull/33), [PR #30](https://github.com/Clubs-Council-IIITH/users/pull/30), [PR #30](https://github.com/Clubs-Council-IIITH/interfaces/pull/30), [f976169](https://github.com/Clubs-Council-IIITH/auth/commit/f97616951110da814eed9b6df62262ad987fc419), [2ee5cc2](https://github.com/Clubs-Council-IIITH/auth-dev/commit/2ee5cc29786f430ec4e1f397c2a7addf5998a995), [1155310](https://github.com/Clubs-Council-IIITH/files/commit/1155310756ffbfd7b260465e8eeec14df91912f3), [228c9e8](https://github.com/Clubs-Council-IIITH/auth-wrapper/commit/228c9e84b3313115f69b386b9ba5c7a7e41c1486)
- Simplifies the Docker setup by removing the dedicated non-root user and disabling chown, reducing build time at the cost of a minor security trade-off. [3f3203f](https://github.com/Clubs-Council-IIITH/web/commit/3f3203f1bec126a4c7c7c4e242d74d5ef029ad83)

## IIIT Main Site

* Designed and updated the R&D Showcase agenda image on the showcase page (multiple iterations completed).
![img_17.png](/images/reports/Mar26/img_17.png)
* Integrated the 2026 portal link into the R&D Showcase page.
* Resolved carousel layout issues on the main homepage.
* Assisted in updating the main site, including plugins and dependency management. (still in progress, waiting for elementor pro renewal)
* Coordinate with Hafiz and make him update all the wordpress plugins in IIIT Main site.
* ![img_25.png](/images/reports/Mar26/img_25.png)

## Blogs Site

* Reorganized menu positions and customized layouts to eliminate overlapping issues in mobile view.
* Implemented automatic addition of newsletters to the menu bar whenever a new newsletter is published.
* ![img_18.png](/images/reports/Mar26/img_18.png)

## R&D Showcase Portals

* Updated WordPress modal templates to incorporate the latest IMS API links for fetching updated data.
* Optimized mobile layout to ensure correct positioning of links on images.
* Verified and Reported inconsistencies, including incorrect image ordering, to Lalitha ma’am.

## Others

* Refined the layout of admission pages (UG Admissions and PG Admissions) by removing unnecessary sections and improving structure.
![img_19.png](/images/reports/Mar26/img_19.png)
![img_21.png](/images/reports/Mar26/img_21.png)

* Help Sudha Ma'am resolve queiries related to the Display Author name tag being shown.
![img_20.png](/images/reports/Mar26/img_20.png)


#### Micellaneous

- Setup a LDAP Replica for testing and development purposes, including synchronization with the main LDAP server and integration with existing authentication flows.
![img_22.png](/images/reports/Mar26/img_22.png)
- Made minor changes to image and font in AICTE page
![img_23.png](/images/reports/Mar26/img_23.png)
- For CQST website, Keerthana approached Evan for some API and asked Evan to explain him the workflow of the API and how to use it. Evan explained the workflow and also provided some code snippets to help Keerthana get started with the API integration.
![img_24.png](/images/reports/Mar26/img_24.png)

### IMS-IIITH

#### Frontend

- Adds a mess balance PDF feature with date-range selection, modal UI, and backend integration—plus support for cookie-based auth when fetching PDFs [PR #329](https://github.com/IMS-IIITH/frontend/pull/329/changes). 
- Improves offline resilience by adding request timeouts, better network error handling, and richer offline UX (including server-unreachable states and cached data checks). [PR #339](https://github.com/IMS-IIITH/frontend/pull/339/changes)
- Adds Android home screen widgets for timetable and mess (with QR refresh), plus a native bridge and navigation handling to sync data and deep-link into the app. [PR #335](https://github.com/IMS-IIITH/frontend/pull/335/changes)
- Enhances mess range operations by adding weekday-based filtering/selection in the calendar UI, moving it to a dedicated screen, and refining range selection behavior and styling. [PR #340](https://github.com/IMS-IIITH/frontend/pull/340/changes)
- Adds inline validation feedback by highlighting the email input with a red border when the entered email is invalid. [PR #344](https://github.com/IMS-IIITH/frontend/pull/344/changes)
- Adds a “What’s New” page that fetches and displays release notes from a backend endpoint, along with minor type import cleanups and a settings entry to access it. [PR #345](https://github.com/IMS-IIITH/frontend/pull/345/changes)
- Refactors storage by introducing scoped async storage layers (user/cache/mess), migrating existing data, and updating all persistence logic to use the new abstraction. [PR #350](https://github.com/IMS-IIITH/frontend/pull/350/changes)
- Integrates Sentry for error tracking and user feedback, including crash reporting, performance monitoring, navigation tracing, and an in-app bug reporting flow. [PR #347](https://github.com/IMS-IIITH/frontend/pull/347/changes)
- Adds full mess “extras” support, including listing, registration/unregistration APIs, state management, and UI screens for browsing and managing extras. [PR #343](https://github.com/IMS-IIITH/frontend/pull/343/changes)
- Adds comprehensive documentation explaining the Android widgets architecture, including data flow, native bridge design, and update strategies for timetable and mess widgets. [PR #353](https://github.com/IMS-IIITH/frontend/pull/353/changes)

#### Backend

- Refines CORS configuration by restricting allowed origins to the backend domain in production while permitting all origins in development, and adds support for OPTIONS requests. [10a7167](https://github.com/IMS-IIITH/backend/commit/10a71671fef1d2cb474f63b0008ca15ab65ce0f1)
- Implements a deny-by-default authentication middleware that enforces auth on all routes except explicitly whitelisted paths, simplifying and tightening access control. [PR #55](https://github.com/IMS-IIITH/backend/pull/55/changes)
- Introduces async-safe caching with improved key handling and dogpiling protection, optimizes LDAP calls via async/thread offloading, and refactors endpoints to use consistent caching and ETag strategies. [PR #56](https://github.com/IMS-IIITH/backend/pull/56/changes)
- Adds optional weekday filtering (`days` parameter) to bulk mess register/cancel/uncancel APIs, enabling operations on specific days within a date range. [PR #57](https://github.com/IMS-IIITH/backend/pull/57/changes)
- Fixes PDF footer timestamps by using timezone-aware datetime (Asia/Kolkata) instead of naive local time. [PR #58](https://github.com/IMS-IIITH/backend/pull/58/changes)
- Introduces a resilient IMS HTTP client with automatic restart on repeated failures, request gating during resets, and centralized usage across backend calls. [PR #63](https://github.com/IMS-IIITH/backend/pull/63/changes)
- Removes redundant POST helper logic, standardizes API calls via a single utility, and cleans up related middleware and config usage. [PR #64](https://github.com/IMS-IIITH/backend/pull/62/changes)
- Adds automatic authentication headers (API key and secret) to all outgoing IMS client requests via httpx event hooks. [987b2eb](https://github.com/IMS-IIITH/backend/commit/987b2ebd654db65502743a7e3abc9c0a4f41e922)

#### Ongoing work

- Completion of setup of clubs-dev.iiit.ac.in
- Allow exceptions for clubs to bypass the event report constraint.
- Inventory management initial setup
