---
title: "Monthly Progress report - January 2026"
meta_title: ""
description: ""
date: 2026-05-14T05:30:00Z
image: "/images/blogs/january.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — January 2026

### Team Members

- Bhav Beri (Tech Lead)
- Dileepkumar Adari (Web Administrator)
- Abhiram Tilak (System Administrator)
- Evan Bijoy (Web + Design Administrator)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)

#### Clubs Council Website

- Add member Month information for member roles along with Year. ([web](https://github.com/Clubs-Council-IIITH/web/pull/175), [members](https://github.com/Clubs-Council-IIITH/members/pull/25))
  - **Standardizes month–year handling across members features**
    Refactors date logic to consistently use `startMonth`, `startYear`, `endMonth`, and `endYear` instead of mixed or legacy formats.
  - **Improves sorting of member roles and positions**
    Centralizes and fixes month–year sorting using a shared utility (`sortMonthYear`), ensuring ongoing roles and recent positions are ordered correctly.
  - **Refactors and cleans up member-related components**
    Removes redundant code, unused imports, duplicate sort calls, and formatting inconsistencies across `MemberCard`, `TechMemberCard`, `MembersTable`, and related components.
  - **Enhances Bulk Edit and Add Member forms**
    Updates inputs to use `type="month"` (`YYYY-MM`), improves validation bounds, and clarifies UI text to reflect month-based membership periods.
  - **Makes date access safer and more robust**
    Adds optional chaining in value getters and date formatting paths to prevent runtime errors from missing fields.
  - **General UI and logic cleanup**
    Fixes delete button behavior, simplifies conditional rendering, and improves readability and maintainability of member position and approval workflows.
  - **Extends role data model to support months**
    Adds `start_month` and `end_month` fields to roles, enabling month-level precision instead of year-only memberships.
  - **Updates GraphQL inputs and queries for month-aware roles**
    Expands `RolesInput` and query logic to include months, and adjusts role filtering (current/past) to use full month–year ranges.
  - **Improves role export and display formatting**
  Updates role serialization and labels to show roles as `Start (M,Y) – End (M,Y)` for clarity and consistency across exports and responses.

![img.png](/images/reports/Jan26/img.png)

![img_1.png](/images/reports/Jan26/img_1.png)

![img_2.png](/images/reports/Jan26/img_2.png)

![img_4.png](/images/reports/Jan26/img_4.png)

![img_3.png](/images/reports/Jan26/img_3.png)

- Complete the auth-wrapper setup for <https://dev-clubs.iiit.ac.in> ([services](https://github.com/Clubs-Council-IIITH/services/pull/106), [auth-wrapper](https://github.com/Clubs-Council-IIITH/auth-wrapper), [hooks](https://github.com/Clubs-Council-IIITH/hooks))
  - In server, setup empty repositories for each of the new repsotories
  - Change hooks logic to add new variables with auth-wrapper and auth-dev.
  - Add a new nginx configuration to handle auth-wrapper redirectation for staging build.
  - Change the docker compose configuration to handle seperate nginx configurations for prod and staging
  - While doing this, we also change some scripts in `services/` to make them work with new setup, and simplify 
    them along the way.

![img_5.png](/images/reports/Jan26/img_5.png)
![img_6.png](/images/reports/Jan26/img_6.png)

- **Micellaneous:**
  - **Calendar Events Query Optimization**: Optimized the calendar events feature by introducing a dedicated query that fetches only essential event data. This reduced load time and improved overall performance of the calendar view. ([fa64608](https://github.com/Clubs-Council-IIITH/events/pull/83/commits/fa64608e2b5d2fee4a2498c867d3eab8318e4bde))
  - **Unfinished Events Query for Clash Detection**: Introduced a query to fetch only unfinished events and used it to check for event clashes during creation and editing. This reduced unnecessary data processing and ensured clash detection considers only relevant, active events.
  - **Added Equipment Field in Data Download**: Included an **Equipment** field in the events data download feature, allowing SLOs to see what equipment is requested for each event in the exported data.

![img_7.png](/images/reports/Jan26/img_7.png)

#### Wordpress Lab Template

- Add large zip via Git LFS
- Other minor ui fixes 

#### Micellaneous

- Backing up ugadmissions site and pgadmissions site. Deploy backed up ugadmissions and pgadmissions site in site4, and update the links in the IIITH website to point to the new sites. The new links are
https://site4.iiit.ac.in/2025/ug_admissions2025/ and https://site4.iiit.ac.in/2025/pg_admissions2025/
- Reverting the nginx confiurations for IIIT Site:
![img_8.png](/images/reports/Jan26/img_8.png)
- Alumni Awards Webpage 
![img_9.png](/images/reports/Jan26/img_9.png)
- Changing openings from #current-openings to #archive 
![img_10.png](/images/reports/Jan26/img_10.png)


### IMS-IIITH

#### Frontend

-  Refactored timetable entry styling by replacing inline highlight logic with shared global styles and improving spacing consistency. Added pull-to-refresh support via RefreshControl, including a refreshing state and callback to re-fetch timetable data. [7841aa7](https://github.com/IMS-IIITH/frontend/commit/7841aa7ae5ea10b1f3b9e4dbfbeb79804185bfa0)
- Refactored mess menu data handling by consolidating cache logic (new `MESS_MENU_CACHE_KEY`) and aligning all components to a unified menu data structure with improved validation and expiry handling. Added robust offline support, including a redesigned MessOffline screen, expandable day-wise menus, and consistent fallback behavior when network data is unavailable. [PR #305](https://github.com/IMS-IIITH/frontend/pull/305/changes)
- Introduced a TimetableExport screen with navigation integration and header action, enabling users to generate calendar subscription (ICS) links. Added API + caching support for ICS data and implemented search functionality within the Full Timetable view. [PR #304](https://github.com/IMS-IIITH/frontend/pull/304)
- Separated refresh state from initial loading by introducing isRefreshing, ensuring pull-to-refresh doesn’t interfere with normal loading indicators. Updated refresh logic to use a dedicated refetchRegs handler, improving UX clarity and state management for registrations. [9ea24b2](https://github.com/IMS-IIITH/frontend/commit/9ea24b24815be0510a9d00a02e663ee07fe10f62)
- Unified mess dashboard and QR handling by switching to a single dashboard API endpoint that returns both registrations and QR token, with corresponding caching updates. Refactored shared components and QR screen to rely on cached data with explicit refetch flows, improving offline behavior and consistency across dashboard and QR features. [PR #307](https://github.com/IMS-IIITH/frontend/pull/307)
- Redesigned the welcome screen with improved layout, animations, and clearer action flows, including better handling of pre-release states and onboarding CTAs. Simplified styles and common components, removing redundancy and standardizing UI elements (buttons, shadows, error states) for consistency. [PR #306](https://github.com/IMS-IIITH/frontend/pull/306/changes)
- Introduced a new mess menu v2 system with a dedicated API, week-based fetching, and layered caching (in-memory + persistent) to improve performance and data consistency. Simplified menu-related components by removing legacy logic, centralizing data fetching, and aligning all views (upcoming, individual, offline) to the new structure. [PR #308](https://github.com/IMS-IIITH/frontend/pull/308/changes)
- Added a focus-aware custom status bar component that dynamically sets light/dark content based on theme and screen focus. Integrated it across key screens to ensure proper visibility on light backgrounds and consistent status bar behavior. [PR #309](https://github.com/IMS-IIITH/frontend/pull/309/changes)
- Fixed the blank home screen issue for unauthenticated users by validating JWT tokens and ensuring navigation only proceeds when a valid session exists. Improved offline access control by gating features based on login state and cached data, preventing invalid navigation paths and inconsistent UI states. [PR #311](https://github.com/IMS-IIITH/frontend/pull/311/changes)
- Resolved welcome screen flicker by restructuring navigation flow to avoid premature redirects during auth success handling. Ensured navigation to dashboard occurs only after validation/refresh logic completes, preventing transient success text flashes. [PR #312](https://github.com/IMS-IIITH/frontend/pull/312)
- Optimized ID card image loading by removing the pre-check request and relying on direct image rendering with `onLoad`/`onError` handlers. Added graceful fallback to avatar and simplified loading logic, reducing latency and improving perceived performance. [PR #310](https://github.com/IMS-IIITH/frontend/pull/310)
- Handled IMS API crash scenarios by explicitly detecting “IMS API” error responses and mapping them to a controlled network error state. Improved error handling by consistently using serverMessage.detail, preventing undefined values and avoiding runtime crashes. [f88d856](https://github.com/IMS-IIITH/frontend/commit/f88d856055112a4f2ac52e3025989cc9ea5da8c0#diff-68b09be7309db3dcf638a666374e25c342a4c8bea14ebaa0b8d90c524f2f9399L60-R70)
- Implemented a full notifications system using Firebase Cloud Messaging and Notifee, including channel setup, foreground/background handling, and deep-link navigation from notification actions. Added topic-based subscriptions (attendance, assignments, timetable, mess) with user controls, along with backend integrations (assignments, timetable checks) to trigger contextual reminders. [PR #295](https://github.com/IMS-IIITH/frontend/pull/295/changes)
- Upgraded project tooling to Node.js 22 and updated CI workflows accordingly, ensuring consistency across build, lint, and deployment pipelines. Bumped major React Native and dependency versions, cleaned up duplicates, and aligned dev tooling (ESLint, TypeScript, CLI) for improved compatibility and stability. [PR #313](https://github.com/IMS-IIITH/frontend/pull/313/changes)
- Improved the bug reporting screen by refining content clarity and structure, making instructions more concise and user-friendly. Added a prominent reminder to update the app before reporting issues, helping reduce duplicate or outdated bug reports. [PR #315](https://github.com/IMS-IIITH/frontend/pull/315/changes)
- Enabled access to cached offline features even when the app version is outdated by introducing a unified offline data check utility. Propagated an OfflineReason across screens to tailor UI messaging and navigation, ensuring consistent handling for both no-internet and outdated-version scenarios. [PR #316](https://github.com/IMS-IIITH/frontend/pull/316/)

#### Backend

- Adds **secure, signed URL–based timetable calendar (ICS) subscription support with ETag caching**, including new calendar endpoints, utilities, and middleware handling for efficient client-side updates. [PR #42](https://github.com/IMS-IIITH/backend/pull/42/changes)
- Refactors the backend to **fully asynchronous I/O using `httpx` and async/await**, replacing blocking API calls and updating all dependent routes/utilities to improve scalability, performance, and concurrency handling. [PR #44](https://github.com/IMS-IIITH/backend/pull/44/changes)
- Introduces **in-memory async TTL caching with optional ETag integration and request deduplication**, and applies it across multiple endpoints (mess, common URLs, courses) alongside parallelized API calls to significantly reduce latency and backend load. [PR #45](https://github.com/IMS-IIITH/backend/pull/45/changes)
- Migrates the project to the **`uv` package manager with a `pyproject.toml`-based setup**, updating Docker builds, dependency management, and environment configuration for faster, reproducible installs and improved containerization. [PR #47](https://github.com/IMS-IIITH/backend/pull/47/changes)
- Adds **Firebase-based push notification infrastructure with topic messaging and scheduled jobs (APScheduler)** to deliver automated alerts for attendance, assignments, timetable slots, and mess events, along with testing endpoints and lifecycle integration. [PR #46](https://github.com/IMS-IIITH/backend/pull/46/changes)
- Adds a **cached `/portals-list` API endpoint backed by an async HTTP client** to fetch portal data from an external service with proper error handling. [13235b5](https://github.com/IMS-IIITH/backend/commit/13235b50021b97105b836d0442d482d695cd8db0)

#### Ongoing work

- Recruitments for UG1 (hired 4 people have given each of them tasks for evaluation)






