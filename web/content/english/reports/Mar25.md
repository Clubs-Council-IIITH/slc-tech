---
title: "Monthly Progress report - March 2025"
meta_title: ""
description: ""
date: 2025-04-06T05:30:00Z
image: "/images/blogs/march.png"
categories: ["Monthly Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website

- **Event Bills Functionality** ([web](https://github.com/Clubs-Council-IIITH/web/pull/138), [events](https://github.com/Clubs-Council-IIITH/events/pull/60)):
  - Add new mutation and type for bills in events.
  - Ensured backward compatibility with the old events structure.
  - Added new mailing template and logic for clubs to send bills.
  - Updated the event finances approval form for SLO to include the new bills functionality.
  - Added viewing of bills for clubs, CC and SLO.

- **CC Recruitment 2025** ([interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/22), [web](https://github.com/Clubs-Council-IIITH/web/pull/141))

- **Documentation**:
  - Added documentation for the gateway and GraphQL, as it was important for knowledge transfer ([gateway PR#1](https://github.com/Clubs-Council-IIITH/gateway/pull/6))
  - Documentation return types, missing documentation for some methods and other minor issues fixed ([clubs](https://github.com/Clubs-Council-IIITH/clubs/pull/22), [users](https://github.com/Clubs-Council-IIITH/users/pull/21), [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/20), [events](https://github.com/Clubs-Council-IIITH/events/pull/59))

- Report Edit Access for Clubs, CC and SLO (Requested by Clubs Council) - [events PR](https://github.com/Clubs-Council-IIITH/events/pull/61)

- Next.js High Severity Bug Fix: "Authorization Bypass in Next.js Middleware" ([web#b989a1b](https://github.com/Clubs-Council-IIITH/web/commit/b989a1b4048fd837395e8b030a95abc5d63ca1bc))

- Updated the Architecture diagram for the clubs council system to include the new members service and other updates in the past ([cc-arch.png](https://github.com/Clubs-Council-IIITH/.github/blob/main/profile/cc-arch.png))

- **API-Docs Website** ([api-docs](https://github.com/Clubs-Council-IIITH/api-docs)):

  - Added Workflows Page and workflow diagram for the main parts of the system.
  - Added last build date
  - Added currently deployed commit hash for the system.
  - Fix reversal of clubs and members mutations

- **Minor Fixes**:
  - Better error messages in files signed_url function for easier debugging and better user experience [files#694bd80](https://github.com/Clubs-Council-IIITH/files/commit/694bd80e62291d81ab7c5f94a7657f0e63b86aff)
  - Fixed the automated reminders cookies
  - Package updates ([interfaces](https://github.com/Clubs-Council-IIITH/interfaces/commit/ddfc686d6c6e96f2497e6f21d04341cca112eb84), [members](https://github.com/Clubs-Council-IIITH/members/commit/d7cc0c2444b878165645a73bc04f20e0fe0d840b))
  - As asked by Clubs Council, allowed option for all clubs and all members to be downloaded in the members data download - only during the farewell time (from March 15 to April 15) ([members#e887abe](https://github.com/Clubs-Council-IIITH/members/commit/e887abe65eefbf75ea469c57be809a88c6553898), [web#5f82856](https://github.com/Clubs-Council-IIITH/web/commit/5f82856ec7e322faa44b03e13189bea1d7e169d9))
  - Fixed the life domain not able to access the server actions ([web#50814e8](https://github.com/Clubs-Council-IIITH/web/commit/50814e8d9647a608a11b49eb1c019df73e8b00ba))
  - Allow webassembly for new browsers (compilation improvement) - [web#dfc6808](https://github.com/Clubs-Council-IIITH/web/commit/dfc68081962e0d05b44d19ba9c12f2db67464fee)
  - Fixed the POC rendering issue in the event report form - [web#5e9945b](https://github.com/Clubs-Council-IIITH/web/commit/5e9945b792f658cea7fc6df06151cd7a9070798e)

- **Work Ongoing**:
  - Documentation of Frontend to be started.
  - Deployment of SLC-Tech website.

---

### Main IIIT site & Blogs site
- Alumni Awards Page – Edited content and improved formatting.
- DFL Staff Subpage – Created a new subpage for DFL staff.
- R&D Webpage – Made necessary content changes.
- Rankings Page – Updated as per requests from the Stats Cell.
- Notice Page – Added a tender notice requested by the Civil Office and IT office.

### Miscellaneous
- Alumni Fund Website – Added IMS members to the website.
- Helped JP sir to find unused users in LDAP instead of using nsLock property and using Date property.
- Add a new dashboard in monitor.iiit.ac.in which will track all the domains per a particular Node.

### My IIIT App
- **Backend**:
  - In logout, no need to specifically check for removing the cookie. Only check for updating IMS record.
  - Added Sports, TT and Assignments APIs
  - Added semester options in the tt APIs for main IMS APIs
  - Error handling for tt and attendance APIs
  - Added MTech and PhD curriculum documents.
  - Added mess APIs: Mess Authentication, Registrations, QR code, Mess Bill, Mess Rates, etc.
  - Moved maintainers list to backend for better maintainability.
  - Handle the new categories of rates in the mess rates API.
- **Frontend**:
  - remove MANAGE_EXTERNAL_STORAGE permission (as not needed and is sensitive permission on playstore), rather add write_external_storage
  - Fix security errors by dependabot
  - Fixed high severity vulnerability in cross spawn package
  - Global gesture handler root
  - Updated gradle version
  - Simplify error for club events fetching
  - Timetable Feature #177
  - Dashboard revamp (#178)
  - Ignore reanimated logs even in console
  - npm package fixes
  - Mess Menu caching (#179)
  - Events page redesign (#191)
  - Fix unreadable loading text in dashboard eID card (#193)
  - Mess Features (#180)
  - Updated the UI for the Attendance Pages (#182)
  - Added Assignments (#181)
  - Cache Profile Details API (#197)
  - Clear Async Storage on logout (#196)
  - Allow Mess Menu for Staff (#201)
  - Updated the about page to get the list of maintainers from backend (#205)

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [My IIIT App Codebase](https://gitlab.iiit.ac.in/instituteapps)
