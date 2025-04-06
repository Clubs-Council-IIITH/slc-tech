---
title: "Monthly Progress report - February 2025"
meta_title: ""
description: ""
date: 2025-03-14T05:30:00Z
image: "/images/blogs/february.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website

- **Event Reminders** ([web](https://github.com/Clubs-Council-IIITH/web/pull/137), [events](https://github.com/Clubs-Council-IIITH/events/pull/58), [auth](https://github.com/Clubs-Council-IIITH/auth/pull/9), [auth-dev](https://github.com/Clubs-Council-IIITH/auth-dev/pull/8), [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/19)):
  - Add a new reminder button for CC to trigger mail to SLO.
  - Created auto reminders for clubs to submit event reports (after one day of event completiong) and bills (all events ended in ast one week).
  - Fixed the timezones in utils.py
  - Get bot cookie from auth and send to interfaces only for automated mailing authentication.

- Updated docs to include more details and be more informative for the APIs section. ([files#3aa1f17](https://github.com/Clubs-Council-IIITH/files/commit/3aa1f179bf07b835ef7f7652c07cbdb2e13c4868), [auth-dev#143da38](https://github.com/Clubs-Council-IIITH/auth-dev/commit/143da389b84def9e4eeea0061a9a99bd177df5af), [auth#5f8739a](https://github.com/Clubs-Council-IIITH/auth/commit/5f8739a80d6b461a30f1a17a8883955bcd384300))

- Fixed the pending TODO for last club category refactoring for the events model ([events PR](https://github.com/Clubs-Council-IIITH/events/pull/54), [web#a5a4f93](https://github.com/Clubs-Council-IIITH/web/commit/a5a4f93d2749ff377fa18bff5c62772ccb0a034d)). Rather than just storing isStudentBodyEvent, save if it is club, body or admin and change progressEvent accordingly. Also, directly approve admin events.

- **API-Docs Website** ([api-docs](https://github.com/Clubs-Council-IIITH/api-docs)):

  - Fix the working of macros with mkdocsstring based on changes in v0.28.0.
  - Event Reminders PR docs added.
  - Fix build_temp to build directory file moving error
  - Fix reversal of clubs and members mutations
  - Added README files to all of the repos, and added a new section for the same in the API-Docs website. This gives a brief overview of each of the section in the docs.

- **Minor Fixes**:
  - Fix collabclubs not found error in events ([events#ac9e3dd](https://github.com/Clubs-Council-IIITH/events/commit/ac9e3dd1d90d02aa0639d0101dd26cb292adcebb))
  - Changelog page darkmode issue fixed ([web#718ee79](https://github.com/Clubs-Council-IIITH/web/commit/718ee79cddcce5ebda48a11ab69ad9310e8ee05e))
  - Fix POC phone number not being checked correctly in event form ([web#3f03feb](https://github.com/Clubs-Council-IIITH/web/commit/3f03feb323611e0b6dd610375be28bde7bfd8376))

- Collected upto-date server and maintainer details for all clubs and student body sites. (The data file was shared with IT Head and JP sir)
- Got a new server for Election Commission.

- **Work Ongoing**:

  - Bills submission functionality for clubs and SLO.
  - Documentation of Gateway and GraphQL, workflow of the system.
  - Deployment of SLC-Tech website.

---

### CAS
- footer text change and monkey emoji removed from password input.

### Main IIIT site & Blogs site
- Reviewed the WPBakery plugin for the IIITH blogs website (blogs.iiit.ac.in).
- Made updates to the NAAC, NIRF, and IQAC sections of the IIITH main website.
- Made changes to the FAQ page on the main site.
- Updated AISHE reports on the NAAC page and improved its layout.
- Updated the R&D Showcase webpage on the main site.
- Hide all disabled PDFs in the NAAC pages.
- Fixed an issue preventing new images from being added to the carousel on the main site.

### IT Services Portal
1. Home Page:
   1. Added welcome banner
   2. Organised quick links into three main sections

2. Tickets Page:
   1. Displays a Tickets Resolved visualization with a donut chart
   2. Added filter button to change the ticket stats per day/month/year

3. FAQ Page:
   1. Contains Frequently Asked Questions in an accordion format

4. Contact Page:
   1. Contains a contact us form where users can attach their mail and query

5. Service Page:
   1. Showcases all the services provided by the IT office

### ISEA Workshop Website
- Designed ISEA Workshop Page: Designed the workshop page according to the requirements.
- Handled Responsiveness of Page & Side bar in Mobile view: Added Responsiveness and side bar feature to page in Mobile view

### My IIIT App
- Fix the Almanac list ordering issue.
- Fixed the handling of user details not found on Welcome Screen.
- In logout, no need to specifically check for removing the cookie. Only check for updating IMS record.
- Setup the app on playstore, and started with the closed internal testing. After it's completion, move the app onto the alpha testing phase.

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [Blogs Website](https://blogs.iiit.ac.in)
- [Portals Website](https://portals.iiit.ac.in)
- [New CAS Design](https://login-new.iiit.ac.in)
- [ISEA Workshop Page](https://nwbcsb2025.iiit.ac.in/)