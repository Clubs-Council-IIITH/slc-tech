---
title: "Monthly Progress report - June-July 2025"
meta_title: ""
description: ""
date: 2026-05-13T05:30:00Z
image: "/images/blogs/july.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### **Clubs Council Website**

- Fixes for code-scanning in github actions, linked to better & fine-grained workflow permissions ([members](https://github.com/Clubs-Council-IIITH/members/commit/12961afdf5c4b3f13ce2ca194f3d0b38573a6bdc), [web](https://github.com/Clubs-Council-IIITH/web/commit/2370c9d5020d5d8ef4b68d3c505fa66e71792263), [users](https://github.com/Clubs-Council-IIITH/users/commit/26106b5dc24b6110eec52825f5c83cf2a33e2307),[events](https://github.com/Clubs-Council-IIITH/events/commit/d78372618552bf833a4932cf609ddd8ab6fe3341), [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/commit/151d34845f43a5c6795a799516b39acf1d0dfb02))
- Added caching in github actions for faster resolution of packages and lesser cpu time usage
- Fixed API docs file templating paths (like mailing page in interfaces, etc)
- Reduce clashing events query ([web](https://github.com/Clubs-Council-IIITH/web/pull/150), [events](https://github.com/Clubs-Council-IIITH/events/pull/68)) - Incorporates new and optimised logic to fetch clashing events only, instead of all the events.
- Added toggle to filter past holidays in manage holidays ([web](https://github.com/Clubs-Council-IIITH/web/pull/155))
- Updated the structure of availableRooms query to return true/false for all rooms + optimised the query. Corresponding frontend changes to show booked rooms ([web](https://github.com/Clubs-Council-IIITH/web/pull/154), [events](https://github.com/Clubs-Council-IIITH/events/pull/72))
- Allow event report editing for SLO ([web](https://github.com/Clubs-Council-IIITH/web/pull/151))
- Sponsorship Table: Added Sponsorship table for clubs to fill in, in the event form ([web](https://github.com/Clubs-Council-IIITH/web/pull/153), [events](https://github.com/Clubs-Council-IIITH/events/pull/71))
- Added script to find active members without images ([users](https://github.com/Clubs-Council-IIITH/users/commit/f6dcf2b6764bac1648999438349ffe8d9d4ca892))
- Script for database report generation related to average event approval times, active & non-active clubs, etc. ([services](https://github.com/Clubs-Council-IIITH/services/commit/defa4824e3ef451ded6d06d8a466917f375f1bcc), [events](https://github.com/Clubs-Council-IIITH/events/pull/65))

- **Minor Fixes**:
  - Updated dependencies and fixed breaking changes in the services template
  - In manage events table, the budget icon was not being shown or shrinking down in certain instances. Fixed that by adding ellipses and prevent icon from shrinking. ([web](https://github.com/Clubs-Council-IIITH/web/pull/148))
  - EventsTable: add vertical align for table cells for mobile view
  - Fixed self-approver logic in slo events ([events](https://github.com/Clubs-Council-IIITH/events/commit/4ffa70d1a442d337568382e254affbc61d5a896f))

- **Work Ongoing**:
  - Asynchronous Migration: Work done on 3 out of 7 backend submodules (events, users, interfaces) - helps increases the throughput of backend.
  - Inventory Management System: CC (specifically Manit) is gathering exact requirements and schema for it.
  - Frontend Documentation
  - Unavailable venue checking from IMS API (still awaiting requested changes in the API - to be done from the side of IT Office)

### **SLC-Tech Website**

- Projects page added for slc-tech
- Added new UG1/UG2 members
- Stylise author card
- Fixed 404 page issue
- Fixed issues with the categories and other theme related issues
- Added new projects for the team - CQST site and Blogs site

### **Miscellaneous**:

- Presenting in the Clubs Showcases in Induction.
- OSDG server upgrade and helping them setup nginx configuration.
- Removing old @ecell domain emails - as per asked by Registrar regarding email domains.
- Updating the life list administrators for the new student bodies teams.

---

### **Main IIIT site & Blogs site**:

- Integrated a **Convocation live stream feature** on the Convocation page and modified the layout as per the new design specifications.
- Created a **WordPress version of the Endowments page**, migrated content from the Alumni Fund Endowments section, and customized the layout and edit capabilities to meet requirements.
- Developed a **custom 404 redirection page** to handle broken or outdated links gracefully.
- Changed the padding of the page regular staff to reduced the content being hidden in overflow 
- Fixing the research areas and search terms for Tejas Bodas sir.
- Resolved **Elementor styling conflicts** affecting the **Careers** page layout and responsiveness.

### **Portals Site**:

- Added My IIIT app and services.iiit page
- Updated all packages and accomodate breaking changes due to packages
- Fixed VPN warning and removed the public IP being shown
- Better handling of internal network or not for showing the VPN warning
- Adding the new students in the life list

### **CQST Website**

### **Alumni Fund Website**:

- The **Giving page** has temporarily been embedded using an iframe from the main site. However, it is planned to be migrated from **fac-webpages** to the **Alumni Fund server** for better control and consistency.
- Updating the Ritesh Tiwari endowments web page with the latest award

### **Survey Website**:

- Updated the survey data format to be **Power BI-friendly**, including scripts to convert raw responses into **human-readable** format for easier analysis.
- Upgraded the site’s styling from **Bootstrap 2** to the **latest version** for modern compatibility.
- **Form Enhancements:**
    - Added new questions in both the **form interface** and **database schema**.
    - Updated the rendering logic to dynamically reflect schema changes.
    - mplemented a **"Previous" button** for better navigation.
    - Made **all questions mandatory** to improve response completeness.
- Identified that the current server runs on **CentOS (outdated)**, which restricts module updates. The platform needs to be migrated to a newer OS for continued support and feature enhancements.

### **Miscellaneous**:

- Setting up the dev-courier server with the DASS project codebase and helping them fix the issues linked with deployment.

### **My IIIT App**:

- **Backend**:
  - Upgraded the minimum app version, as new updates had security fixes and breaking changes
  - Removed unneeded deps from requirements - to reduce the size of the docker image
  - Remove restrction of mess names (to make it dynamic to future changes)
  - Don't pass access token each time - can be a security issue
  - UG1 contacts file and induction schedule as static files in backend
  - Improve the handling of the /login path when user is already logged in
  - Handle LDAP Errors
  - Added range registration APIs
  - Upgrade from py3.12 to py3.13
  - Integrate Mess Portal API changes
  - Added API to import a weeks meal
  - Setup staging environment for server for easier testing.
  - Support for meal date in mess menu
  - Update the get registrations function to handle guests category
  - Removed deprecated, old mess APIs (which were there for backward compatibility)

- **Frontend**:
  - Fixed Mess Menu UI by refining how meal data and day labels are determined and displayed throughout the Mess menu components.
  - Fix mess info fetching issue (due to insufficient mess portal key in fetchMessInfo function)
  - Major Package Updates (Fixing breaking changes, etc)
  - Security fixes in packages
  - Integrate Mess Portal API changes (version 2 of mess portal)
  - Fixed Mess Rates page crashing
  - Added checking of mess tags for mess registrations and options
  - UG1 specific pages (Induction Schedule, important contacts and Anti-Ragging page)
  - PR domain checking 
  - Added mess import week option
  - [Refactor] Move all cache keys to a common constants file
  - Add in memory cache for menu (future dates)
  - Faculty/Staff mess view enable
  - Handle feedback winodw from config

- **In Progress**:
  - Globalising styles
  - Staff and Faculty Features (awaiting APIs from the side of IT office)

---

### Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [SLC-Tech Website](https://slc-tech.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [IT Services Website](https://slc-tech.iiit.ac.in/itservices)
- [My IIIT App Codebase](https://gitlab.iiit.ac.in/instituteapps)
