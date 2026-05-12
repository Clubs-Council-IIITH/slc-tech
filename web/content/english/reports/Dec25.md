---
title: "Monthly Progress report - December 2025"
meta_title: ""
description: ""
date: 2025-03-14T05:30:00Z
image: "/images/blogs/december.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Clubs Council Website

- **Restrict event creation until all reports are submitted by the club:** A club cannot submit (create) a new event if it has any past events that were completed more than 7 days ago and whose reports are still pending. The restriction applies to events created after a specified date (e.g., 2026-01-01). The all-events query for the clashing events (existing events) will fetch only the unfinished events. The calendar should get all the available approved events. ([web](https://github.com/Clubs-Council-IIITH/web/pull/166))

- **SLO Access for Deleted Events:** Add SLO access for deleted events in the frontend (/manage/events) table and also in CSV download (only when SLO is logged in). ([events](https://github.com/Clubs-Council-IIITH/events/pull/84)).

- **Add authentication wrapper for dev-clubs.iiit site: (not deployed yet)** The current issue with dev-clubs.iiit.ac.in is that both production and staging are using the main CAS authentication, which prevents proper testing with development-specific roles. To address this, the goal is to introduce a new auth wrapper for staging such that visiting dev-clubs.iiit.ac.in initially redirects users to CAS for authentication, allowing access only to whitelisted users. After successful CAS login, users are redirected back to the staging site, where the application switches to using auth-dev instead of the main auth, enabling testers to log in as roles like CC or SLO and fully test staging-specific functionality. ([auth-wrapper](https://github.com/Clubs-Council-IIITH/auth-wrapper), [services](https://github.com/Clubs-Council-IIITH/services/pull/106))

- **Major framework upgrade:** Migrated the codebase from Next. js 14 → Next. JS 16 and React 18 → React 19, including required codemods and breaking-change fixes. Enabled the React compiler and aligned the project with the latest React 19 patterns and deprecations. ([4a838f8](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/4a838f841b79ed0ba809547aea62cf093e0e5b26), [4314604](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/431460420ca02ad3626292b75b5f11f65b33a2be))

- **Next.js Dependency Modernization & Security:** Upgraded a large set of core dependencies (MUI, urql, FullCalendar, GraphQL, react-pdf, sharp, etc.). Resolved known CVEs and dependency security alerts flagged during the upgrade. Updated Node engine requirements to modern LTS-compatible versions. Introduced eslint-config-next and moved to the new ESLint flat config format. ([ffc919a](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/ffc919a6a066330a819a273d47f3414a84a22f8a), [9fdb9b7](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/9fdb9b7849f47de1343a9414811ef13ed9d02ba5), [e62dbf6](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/e62dbf66ca96eeb23de91980ef709c04d43ca445))

- **MUI & UI system migration:** Migrated Material UI v6 → v7 and MUI X DataGrid v7 → v8. Transitioned layouts to MUI Grid v2, fixing sizing, spacing, and layout inconsistencies. Removed deprecated props (autoHeight, InputProps, etc.) and fixed multiple DataGrid warnings (row height, keys, filters, exports). ([ac13a77](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/ac13a77e03f8bd42d5bb1446f697a91777107385), [da4e90b](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/da4e90bdca104cd5f75d2552370e4ab57bd65d75), [65f9ee8](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/65f9ee87b34a7eef03dd40bf6ba9c8b054f6ca89))

- **Next.js App Router & SSR fixes:** Refactored pages to comply with Next.js 16 App Router changes (props.params, props.searchParams). management, and Fixed metadata generation, routing, and redirection edge cases. Integrated @mui/material-nextjs for correct SSR + styling behavior. Added Turbopack support for faster local development instead of copying node_modules. Improved SVG handling via @svgr/webpack (both Webpack and Turbopack paths). Disabled Next.js telemetry and optimized Docker build setup. ([05cb8d7](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/05cb8d74ff4ce78d9687a7ef29a369114d88f677), [6fcedb5](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/6fcedb5bdedbdd451fb2f7fa1e116b6326581faa), [d7292f6](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/d7292f6b85e57cb57463568b253dc96ae42080fa))

- **UI bug fixes & behavioral corrections:** Fixed multiple broken pages and flows (events, clubs, CC recruitments, member management, approvals). Resolved React key warnings, nested `<li>` issues, form state bugs, and layout regressions. Corrected event workflows (approval status, bill upload, sponsor/location handling, copy/edit flows). Improved error pages, loading states, and general UI consistency. ([d3294f8](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/d3294f8a9c1982577ec5c30bdd6c88515ae13e38), [4d7ff1e](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/4d7ff1ed2f5891031636d4312ce9d1bc8fd9fb12), [5671839](https://github.com/Clubs-Council-IIITH/web/pull/167/commits/5671839e21000db0027cd2caea76a8707d9db3e2))

- **ESLint Updates:** Add strict ESLintwrap configuration and add new plugins like importSorting ([c3d3e47](https://github.com/Clubs-Council-IIITH/web/pull/171/commits/c3d3e47fae21461d4f1ecbb97132f0f89a6e354e)). Basic linting and anti-pattern fixes like rearranging code ([810a769](https://github.com/Clubs-Council-IIITH/web/pull/171/commits/810a769e7632957a10f8c6ff5f23b0f2355ad907)). Use `useEffectEvent`wrap around'' instead of useState inside useEffect ([900d0f1](https://github.com/Clubs-Council-IIITH/web/pull/171/commits/900d0f1184d5c4bab2fc44c977128e67d18d4813)). 

- **Minor Fixes:**
    - Add the new bundle analyzer introduced in [Next.js 16.1](https://nextjs.org/blog/next-16-1#nextjs-bundle-analyzer-experimental) (5fdfb71).
    - Remove old and unwanted static site maps (in XML) in favor of dynamic JS sitemaps generated from the source code itself. ([ed5a6d2](https://github.com/Clubs-Council-IIITH/web/commit/ed5a6d23154381727e400945b91be3b844ed6699))
    - Bump up version of libphonenumber, now supports IN ([642135c](https://github.com/Clubs-Council-IIITH/web/commit/642135cc8f14900ea31d2c2fe36bed34d460fd0d))
    - Clear sponsor- and location-related fields when copying event ([eb4c04e](https://github.com/Clubs-Council-IIITH/web/commit/eb4c04e7fb9f80d30adafacba446c699acda7efc)).
    - Add labels or tooltips for certain buttons across the website ([787a450](https://github.com/Clubs-Council-IIITH/web/commit/787a450ec7f8990a0e51bd4d250409cf0ad67b3c)).
    - Use a Python dictionary instead of JSON in the updateRole setOnInsert mutation. ([b22bf22](https://github.com/Clubs-Council-IIITH/users/commit/b22bf2277db8d918d6c87dfd61a2f6bcada88a03))
    - Update the setup repo to have the 2025 latest JSON files and change the Python script to load them well (d43465e).
    - In the collaborative club selector, remove the original club that is selected ([2ce4c10](https://github.com/Clubs-Council-IIITH/events/commit/2ce4c10b2f34726c071666995547ddb7120cd711)).
    - Along with the submission time for the event, also store the creation time (for a draft event, the submission time might be different from the creation time) (dec2aa9).
    - For the getEvents query, add a pagination limit of 25 events. ([3faf7ba](https://github.com/Clubs-Council-IIITH/events/commit/3faf7ba48c495dd1061004da714b59573108c9f2))

### VPN Website

**Fix Download Redirection Issue:** ([vpn-website](https://github.com/Clubs-Council-IIITH/vpn-website/pull/1/files))
    - This change fixes the download redirection flow in the VPN website by correctly handling CAS authentication and file-serving logic. The update adjusts environment configuration for local vs. production service URLs, refactors the /file route to dynamically generate CAS service URLs per requested file, and ensures proper ticket verification before serving files. 
    - It introduces a buffer-based download mechanism using session state and a temporary downloading page to avoid broken redirects while securely serving files only after successful CAS authentication. Minor frontend styling cleanup is also included.

### Main IIIT Site

- **Tender Notice Update (Pre-Bid Meeting):**
Updated the date of the pre-bid meeting in the tender notice as requested, ensuring the information published on the site reflects the revised schedule accurately.

- **CSP Configuration Fix for Elementor (Nginx):**
Resolved the Content Security Policy (CSP) issues that were preventing Elementor from functioning correctly. Updated the ssl.conf Nginx configuration to include all required external sources for scripts, styles, images, and iframes, restoring full editor functionality without compromising security.

- **Gallery Page Enhancements for New Visitors:**
Added duplicate cards in the visitors section of the gallery page to accommodate and display new visitors, improving content organization and presentation for recent entries.

### Courier Portal

1. Create an admin report cron job in the courier portal.
2. Test and update student notification and admin report

### Miscellaneous

- **Add common WordPress template:** (<http://10.4.20.24:10013/>)
    - Create a new container in the Dell 18 base machine for the WordPress template.
    - Install WordPress and set up nginx for rerouting.
    - Select a popular preexisting theme.
    - Add required pages such as Home, About, Publications, News, Team, and Contact.

- **Setup OneDrive backup for the CC server: (currently staging)**
    - The task is to create an automated backup system that periodically exports all production MongoDB collections using mongoexport, compresses them into archive files, and also backs up image data from /mnt/share/files1. 
    - The script should support uploading these backups to a personal OneDrive account with the ability to overwrite existing files and optionally send email notifications with logs if errors occur during execution. 
    - Multiple cron jobs should be configured with different intervals: monthly for images and weekly, every two days, and daily for MongoDB data, with the flexibility to switch to a different OneDrive account later.

### JP sir's work 

Corresponding to <redmine-dev.iiit.ac.in>

1. Dashboard and Navigation:
    - Added Dashboard option near “News” in Redmine UI.
    - Configured Dashboard link to redirect correctly.
    - Restricted Dashboard visibility using Dashboard group–based access control.
    - Removed personal calendar–specific dashboard logic.
2. Authentication and Access:
    - Enabled authentication for help-dashboard.
    - Verified group-based access for Dashboard visibility.
    - Ensured authenticated users only can access dashboard data.
3. Office & Sub-Office Structure
    - Fixed Office → Sub-Office hierarchy:
    - Main offices now correctly show corresponding sub-offices (e.g., Network, Login Issues, Academic Office). Behavior aligned with help.iiit.ac.in.
    - Resolved issue where only L1 settings were visible.
    - Ensured correct office structure across dashboards and ticket creation flow.
4. SLA Configuration
    - Identified SLA incompatibility between Helpdesk and Redmine schemas.
    - Confirmed SLA data cannot be auto-migrated.
    - Manually recreated:
        - SLA levels
        - SLA mappings per office
    - Ensured SLA functionality works with Priority field.

5. Tracker & Priority Field Issues
    - Fixed missing Tracker and Priority dropdown for affected users.
    - Identified root cause as legacy DB-imported field inconsistencies.
    - Resolved issue where some users could see Priority, others could not.
    - Verified Priority field availability is now consistent for all users.

6. Calendar & Reporting Enhancements
    - Removed personal calendar dependency.
    - Implemented common reporting calendar logic.
    - Added ability to select date / month / year, filter by all offices or specific offices
    - Dashboard now shows, total ticket count, open ticket count, closed ticket count
    - Reporting focuses on aggregated counts, not individual ticket details (as per CAO requirement).

### Ongoing work

- Inventory management (todo: arrange a meeting with CC and SLO together).
- Members along with the year of joining add the month of joining. (to be more specific)
- Deploying of OneDrive backups, auth-wrapper.
- Recruitments for UG1 (replacing Shreyansh, and in the future, Dileep and Bhav)

### My IIIT App

**Android:**

- Change app logo for debug and main app for easy differentiation in both iPhone and Android ([#291](https://github.com/IMS-IIITH/frontend/pull/291))
- Change from using keystore to keychain: ([#280](https://github.com/IMS-IIITH/frontend/pull/280))
    - Access tokens are now stored and retrieved using react-native-keychain instead of cookies, improving security and persistence across app restarts.
    - All usage of @react-native-cookies/cookies was removed, along with the CookieManage.tsx file, and auth flows were refactored to rely solely on keychain-backed tokens.
    - Login, logout, refresh-token, and welcome/session validation logic (AuthUser, AccessToken, RefreshToken, LogOut, Welcome) were updated to set, read, migrate, and clear tokens from the keychain.
    - Added logic to gracefully handle first-run transitions from cookie-based auth to keychain-based auth without forcing app crashes or undefined states.
    - Added `react-native-keychain` to dependencies, updated Gradle and settings files, and included biometric permissions (`USE_BIOMETRIC`, `USE_FINGERPRINT`) in AndroidManifest.xml.
    - Simplified boolean checks, improved error handling, cleaned up duplicate UI rendering, and updated README notes to reflect the new keychain-based authentication approach.
- Show semester and year in the timetable page. ([2fa0104](https://github.com/IMS-IIITH/frontend/commit/2fa01048b2d6bab83070db425efa9c485ddcbf69))
- Add Aarogya Timings. ([#294](https://github.com/IMS-IIITH/frontend/pull/294))
    - Added a dedicated AarogyaTimings screen that displays doctor availability, specialization, timings, location, and on-call status in a structured, user-friendly layout.
    - Registered the new screen in the main navigation stack and added an entry in the sidebar menu for easy access.
    - Fetches Aarogya timings data from a new backend endpoint (/common/aarogya-timings) using the stored access token for authentication.
    - Added AsyncStorage-based caching with a 5-day validity window to reduce network calls and provide fallback data during network failures.
    - Supports manual refresh to force-update data and shows loading indicators, warnings, and error states using standard full-page components.
- Since the clubs council changed the activeClubs to the allClubs query, change it in the app too ([8b65780](https://github.com/IMS-IIITH/frontend/commit/8b657809b4b39348e76e3b27a8e61a8fef7ca4da)). 
- Add a new mess selector page instead of using a modal: ([#296](https://github.com/IMS-IIITH/frontend/pull/296))
    - Replaced the old modal-based mess selection flow with a dedicated MessSelector screen, improving navigation clarity, state handling, and UX consistency.
    - Added MessRegistrationsContext to manage meal registrations globally, enabling consistent updates across registration, cancellation, skipping, and import flows without full reloads.
    - Embedded meal-wise menus, capacities, cancellations, and rates directly into the selector page via tab navigation, allowing informed decisions while selecting a mess.
- Implement offline features so certain features work without internet: ([#300](https://github.com/IMS-IIITH/frontend/pull/300))
    - Implemented robust offline caching for Mess (QR, today’s registrations, weekly menu) and Timetable (My TT & Full TT) using AsyncStorage with defined cache expiry policies.
    - Introduced app-wide network monitoring via NetInfo, automatic redirection to a No Network screen, an Offline Dashboard, and a Connection Restored dialog to safely transition back online.
    - Added dedicated OfflineDashboard, MessOffline, and TimeTableOffline screens to display cached data with clear “Offline Mode” indicators and cache age metadata.
    - When APIs fail or connectivity/auth expires, the app falls back to cached data (even if stale), avoiding crashes, infinite loops, and blank states.
    - Fixed multiple edge cases reported during review (infinite loops, broken restore flow, mismatched pages, missing menus, and alignment issues) and aligned offline UI behavior closer to online screens.
    - Both MyTT and Full TT now cache and restore semester and year along with timetable data, fixing incorrect context when viewing cached timetables offline.
    - Added a FullPageWarning for cases where a timetable cache exists but contains no personalized data, avoiding blank or confusing screens.
    - Enhanced offline QR display with dynamic theming (light/dark logo), better sizing, spacing, and clearer cache-age indicators using a single consolidated “last updated” timestamp.
    - Removed multiple ad-hoc date helpers across Mess, Attendance, Assignments, and Timetable screens; standardized on a shared formatDate utility for consistency and fewer bugs.
    - Simplified repeated cache-recovery paths—expired cache is now reused safely on API/network/auth failures instead of duplicating logic in multiple branches.
- Remove architectures that are not required during build, like armv7 and x86; only keep armv8 and x86_64 ([299210e](https://github.com/IMS-IIITH/frontend/commit/299210e800a89d6ee573fef267777225461ebf94), [d59645e](https://github.com/IMS-IIITH/frontend/commit/d59645ee85d47ec1004ce58310c080e9dc2be6e1)).
- Credentials omitted are not needed anymore, given we have moved away from cookie storage ([9021998](https://github.com/IMS-IIITH/frontend/commit/9021998d2e9192467fe58ea75b69f2a0ac4ac4e8)).
- Change the navigation bar to have an edge-to-edge display, and stop using the old package. ([#297](https://github.com/IMS-IIITH/frontend/pull/297))
    - Replaced the heavier edge-to-edge setup with the lighter @zoontek/react-native-navigation-bar library for better sizing, simpler integration, and modern RN internals.
    - Turned on full edge-to-edge rendering for all supported Android devices and removed deprecated StatusBar styling to fix color and layout inconsistencies.
    - Unified header height, padding, and back-button handling across screens; fixed dashboard height issues and warnings related to invalid header styles.
    - Added a “Go Online” button to the Offline Dashboard, improved transitions back to online mode, and ensured correct stack popping instead of incorrect dashboard resets.
    - Fixed navigation edge cases (QR fullscreen modal blocking navigation, correct headerBackVisible, cleaner headerRight usage) and improved mess-related navigation flows.
- Upgrade the NDK version to v29, and v28 is not deprecated ([#298](https://github.com/IMS-IIITH/frontend/pull/298)).
- In the About page, the developer information is not being fetched ([7d31262](https://github.com/IMS-IIITH/frontend/commit/7d312624019a08623ccfb971766c0ab2d06a697d), [5a3ddea](https://github.com/IMS-IIITH/frontend/commit/5a3ddea50fa75847477b1c9275d0ad5cefdec934)).
- Not only error 304, but also 409 can mean the user is already logged in (corresponding change in backend). ([e338f71](https://github.com/IMS-IIITH/frontend/commit/e338f71817f3e1121e9d91ed1b024b74bccfe225)) 
- Refactor most of the Dashboard code to make it work with edge-to-edge display ([#301](https://github.com/IMS-IIITH/frontend/pull/301)).
    - Corrected height calculations by accounting for safe-area insets, footer height, and help text, preventing content from being cut off or becoming unscrollable.
    - Removed problematic nested/duplicate ScrollView usage and stabilized scroll behavior during drag vs. idle states, fixing jitter and partial scrolling on the Dashboard.
    - Cleaned up Animated. View sizing/positioning so the pullable sheet animates correctly without conflicting height/top/bottom styles.
    - Adjusted container vs scroll padding in MessMenu, MessRates, and student-related pages to avoid clipped content and broken refresh behavior.
    - Remove unneeded ScrollViews and no hardcoded values for height. ([1c19d03](https://github.com/IMS-IIITH/frontend/commit/1c19d03a5c589be04c8f05c3229ac45327a3a3b5))

**iOS:**

- Added scripts/make-release.sh to automate the full release process: pulling the latest main, computing the next version tag, updating iOS versioning, and pushing tags. ([ad821c9](https://github.com/IMS-IIITH/frontend/commit/ad821c9d6f6ce5127338020218414008eef78b0c))
- The release script automatically determines the next tag based on the current year and month (e.g., 2026.01.01 → 2026.01.02), ensuring chronological and predictable versioning.
- The script prompts for confirmation before pulling changes and before creating/pushing tags, reducing accidental releases or version bumps.
- Added `scripts/update_ios_version.sh` to update `MARKETING_VERSION` only for the Release configuration in the Xcode project, leaving Debug builds untouched.
- The iOS script creates a backup, updates the version using awk, verifies the change, and rolls back safely if validation fails. 
- The workflow automatically commits the iOS version bump (v<version>), creates and pushes the git tag, and syncs both commits and tags to GitHub and GitLab remotes. ([e10653a](https://github.com/IMS-IIITH/frontend/commit/e10653a36c85ed8aa2fcf9d38644a3f7153ed01c))
- Fix iOS header shadow bug

**Backend:**

- New version of Docker, the network can't be ipv4_address ([e65b4d6](https://github.com/IMS-IIITH/backend/commit/e65b4d6b40a7a70b8bbd348671251e9cbd60f524))
- Update Python version and other packages. ([86aa56b](https://github.com/IMS-IIITH/backend/commit/86aa56bbbcf869c2b019938ac49693bffa2ca433))
- Add Aarogya timings endpoint from parliament's website ([914c06c](https://github.com/IMS-IIITH/backend/commit/914c06c60ab38538e769db1f40a9cfb0e472608e))
- Add mess meal skipping feature endpoint (0f7c060)
- Add email for maintainers in the endpoint ([d024373](https://github.com/IMS-IIITH/backend/commit/d02437393132950f95cbb43369cc9c7bb0d138a1))
- Give access to internal docs without needing to expose the backend static files for new frontend devs. ([fc58307](https://github.com/IMS-IIITH/backend/commit/fc5830788dd55a84b5608abebccc18f44ff147b5))
- Add a last deployed date (to know when the changes were made). ([31ed62c](https://github.com/IMS-IIITH/backend/commit/31ed62cc64e03516ee82645d36ef3361a19317b9))
- Return full registration data (including the meal and meal date). ([a211a30](https://github.com/IMS-IIITH/backend/commit/a211a30ac30222ab00bc660f11379c74fc17345f))
- Range cancel API can register and then cancel also ([f2297d8](https://github.com/IMS-IIITH/backend/commit/f2297d8c752b19576afc70172776f34b63f65591))
- Fix range cancel flow to safely handle missing registrations by auto-registering, cancelling, and returning updated state without errors ([f2297d8](https://github.com/IMS-IIITH/backend/commit/f2297d8c752b19576afc70172776f34b63f65591))
- Enforce active-user check in profile API and block access for inactive users with clear 403 errors. ([3e21311](https://github.com/IMS-IIITH/backend/commit/3e213119c3db9747b04dc4a7a8ba4cf36ccecaf7))
- Switch timetable semester logic to show the next semester starting from the 20th of the preceding month ([98390f8](https://github.com/IMS-IIITH/backend/commit/98390f8e3d35ec416d428d5fcc8c15b1c99de5b5))
- Include semester and academic year metadata in timetable API responses ([29dd7bb](https://github.com/IMS-IIITH/backend/commit/29dd7bb6cdd5cbc058085ec2fa1bea6ad3c3e9d3))
- Website Team View changes ([#43](https://github.com/IMS-IIITH/backend/pull/43)):
    - Migrated maintainers. JSON to a structured format with separate current and past maintainers, including tenure periods and profile images.
    - Added a collapsible past developers section and enriched the team view with avatars and duration metadata for clearer attribution.
    - Updated internal utilities to load only current maintainers by default while remaining compatible with the new JSON structure.
    - Large HTML and data refactor to support the new layout, images, and timeline-driven presentation of the website team.
- Add new mess billing APIs with monthly, overall, and legacy-compatible bill endpoints ([e5b39bc](https://github.com/IMS-IIITH/backend/commit/e5b39bc22cd2e177d6f084dbd80e76ad5ab2a12c))
- ETag support for timetable and calendar support ([#42](https://github.com/IMS-IIITH/backend/pull/42)):
    - Introduced a public ICS (iCalendar) feed for student timetables, enabling easy subscription in Google Calendar and other calendar apps.
    - Implemented secure signed URLs for calendar access, valid for 1 year from creation, without requiring login after generation.
    - Calendar data automatically switches to the next semester from July 20 / Dec 20, matching backend timetable behavior.
    - Added full ETag support for calendar routes and user details APIs to reduce unnecessary recomputation and bandwidth usage (304 responses).
    - Built a complete ICS generator with weekly recurring events, alarms/reminders, timezone handling (IST), and proper metadata.
    - Updated middleware to safely exclude calendar routes from auth, while validating access via email + signature checks.
    - Exposed the /students/timetable_ics_url endpoint to generate and return the signed calendar subscription URL.
    - Added new environment variables, dependencies (icalendar, email-validator), SHA-256-based signatures, and cleaner middleware error handling.
    - Finally add etag support for all other APIs ([cef1eac](https://github.com/IMS-IIITH/backend/commit/cef1eacb953b7416e3e1de931f707e2cfab71cac)).
    - Add etags for files as well. ([b465da6](https://github.com/IMS-IIITH/backend/commit/b465da66151d1a8d0b2b1425a2f1d8191caec856))
- Add Asynchronous and Optimizations ([#44](https://github.com/IMS-IIITH/backend/pull/44), [#45](https://github.com/IMS-IIITH/backend/pull/45)):
    - Replaced synchronous requests with httpx + async/await across IMS, Mess, Parliament, and related APIs to improve throughput and responsiveness.
    - Introduced shared async HTTP clients with tuned connection limits to reduce TCP handshake overhead and improve performance under load
    - Enabled HTTP/2 where supported (Mess/Parliament), while gracefully falling back for IMS, which does not support HTTP/2.
    - Stored roll number inside auth cookies/JWT to avoid repeated role/identity lookups on downstream API calls.
    - Consolidated scattered `_make_url, get_call, post_call` logic into a single async request helper, simplifying error handling and maintenance.
    - Added HTTP Range support for ICS downloads and ensured async compatibility with ETag-based caching.
    - Added lightweight caching for Parliament data to prevent repeated expensive calls.
    - Converted sequential Mess backend calls (rates, config, range ops) into parallel asyncio. gather workflows, significantly reducing response latency.
    - Added a custom TTL-based async cache decorator for near-static endpoints, avoiding repeated backend calls in a single-worker setup.
    - Enabled ETag handling on expensive Mess and common routes returning large JSON payloads to reduce bandwidth and recomputation.
    - Cached endpoints like menu, rates, config, almanac list, curriculum list, Aarogya timings, and Full TT, with carefully tuned TTLs
    - Installed and enabled uvloop for faster event-loop performance under async workloads.
    - Adjusted HTTPX connection limits and added bounded concurrency (semaphores) to prevent overwhelming upstream Mess APIs.

**Ongoing work**

- Adding a widgets for today's meal registrations that can be added.
- Testing notifications feature for Attendance, Assignments, Meals, TimeTable

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [SLC-Tech Website](https://slc-tech.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [Main IIIT Website Changelog](https://iiithydstudents-my.sharepoint.com/:x:/g/personal/webadmin_students_iiit_ac_in/IQAcoHRcIsGURYVtUF5oVVWDARn4RuQK9H2U0xaQ3ZAa0K8)
- [IT Services Website](https://slc-tech.iiit.ac.in/itservices)
- [My IIIT App Codebase](https://gitlab.iiit.ac.in/instituteapps)
- [Dell 18 Server Docs](https://docs.iiit.ac.in/help-wiki/server/base-machines/dell-18)
- [Courier Portal](https://courier.iiit.ac.in/)


----

==========================================

### Appendix


```text
╔═══════════════════════════════════════════════════════════╗
║         Network Benchmark Tool                            ║
║         Sync vs Async Comparison (100 requests each)      ║
╚═══════════════════════════════════════════════════════════╝
```

---

#### 🔵 BENCHMARKING SYNC DOMAIN

**Domain:** `ims-app.iiit.ac.in`

---

##### Endpoint 1: `/common/profile`

**URL:** [https://ims-app.iiit.ac.in/common/profile](https://ims-app.iiit.ac.in/common/profile)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.347930s`

##### Results

| Metric         | Value         |
| -------------- | ------------- |
| Total Requests | 100           |
| Success        | 100 (100.00%) |
| Failed         | 0 (0%)        |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 341.715   |
| Median  | 340.041   |
| Min     | 333.257   |
| Max     | 394.425   |
| P95     | 356.032   |
| P99     | 394.425   |

**Throughput**

* **Requests/sec:** `2.92`

---

##### Endpoint 2: `/students/timetable?full=true`

**URL:** [https://ims-app.iiit.ac.in/students/timetable?full=true](https://ims-app.iiit.ac.in/students/timetable?full=true)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.938921s`

##### Results

| Metric         | Value         |
| -------------- | ------------- |
| Total Requests | 100           |
| Success        | 100 (100.00%) |
| Failed         | 0 (0%)        |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 964.157   |
| Median  | 947.019   |
| Min     | 924.121   |
| Max     | 1164.883  |
| P95     | 1025.664  |
| P99     | 1164.883  |

**Throughput**

* **Requests/sec:** `1.03`

---

##### Endpoint 3: `/common/aarogya-timings`

**URL:** [https://ims-app.iiit.ac.in/common/aarogya-timings](https://ims-app.iiit.ac.in/common/aarogya-timings)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.627229s`

##### Results

| Metric         | Value         |
| -------------- | ------------- |
| Total Requests | 100           |
| Success        | 100 (100.00%) |
| Failed         | 0 (0%)        |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 441.016   |
| Median  | 361.117   |
| Min     | 345.224   |
| Max     | 5368.657  |
| P95     | 616.905   |
| P99     | 5368.657  |

**Throughput**

* **Requests/sec:** `2.26`

---

#### 🟢 BENCHMARKING ASYNC DOMAIN

**Domain:** `ims-app-test.iiit.ac.in`

---

##### Endpoint 1: `/common/profile`

**URL:** [https://ims-app-test.iiit.ac.in/common/profile](https://ims-app-test.iiit.ac.in/common/profile)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.357352s`

##### Results

| Metric         | Value         |
| -------------- | ------------- |
| Total Requests | 100           |
| Success        | 100 (100.00%) |
| Failed         | 0 (0%)        |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 336.430   |
| Median  | 334.381   |
| Min     | 326.669   |
| Max     | 387.276   |
| P95     | 353.118   |
| P99     | 387.276   |

**Throughput**

* **Requests/sec:** `2.97`

---

##### Endpoint 2: `/students/timetable?full=true`

**URL:** [https://ims-app-test.iiit.ac.in/students/timetable?full=true](https://ims-app-test.iiit.ac.in/students/timetable?full=true)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.967574s`

##### Results

| Metric         | Value         |
| -------------- | ------------- |
| Total Requests | 100           |
| Success        | 100 (100.00%) |
| Failed         | 0 (0%)        |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 915.124   |
| Median  | 911.102   |
| Min     | 887.207   |
| Max     | 1013.309  |
| P95     | 948.912   |
| P99     | 1013.309  |

**Throughput**

* **Requests/sec:** `1.09`

---

##### Endpoint 3: `/common/aarogya-timings`

**URL:** [https://ims-app-test.iiit.ac.in/common/aarogya-timings](https://ims-app-test.iiit.ac.in/common/aarogya-timings)
**Requests:** 100

**First Request**

* HTTP: `200`
* Time: `0.308126s`

##### Results

| Metric         | Value       |
| -------------- | ----------- |
| Total Requests | 100         |
| Success        | 99 (99.00%) |
| Failed         | 1 (1.00%)   |

**Response Times**

| Type    | Time (ms) |
| ------- | --------- |
| Average | 417.925   |
| Median  | 302.310   |
| Min     | 285.454   |
| Max     | 5314.552  |
| P95     | 535.749   |
| P99     | 5314.552  |

**Throughput**

* **Requests/sec:** `2.39`

