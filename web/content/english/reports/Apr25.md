---
title: "Monthly Progress report - April 2025"
meta_title: ""
description: ""
date: 2026-05-13T05:30:00Z
image: "/images/blogs/april.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### **Clubs Council Website**

- **Logging Timestamps** (In all services): Earlier in the logs for different services, the timestamps were not there which was creating issues in debugging and understanding the points in time when the issue occurred. Now, all the services have timestamps in the logs which will help in debugging and understanding the flow of events better. Made a common logging configuration setup for all the services to ensure consistency in logging format and timestamps ([services](https://github.com/Clubs-Council-IIITH/services/pull/65))
  - Batch filtering for UG and PG when downloading members' data ([web](https://github.com/Clubs-Council-IIITH/web/pull/143), [members](https://github.com/Clubs-Council-IIITH/members/pull/16))
  - Fix for ["Critical High Severity" vulnerability](https://github.com/advisories/GHSA-vqfr-h8mv-ghfj): All backend packages.
  - Upgrade backend packages to fix the strawberry build failure issue: The strawberry build was failing due to its version being incompatible with the latest version of Python: All submodules have been updated to use the latest compatible version of strawberry.

- **Minor Fixes**:
  - Remove ccing Clubs Council in just after event ended emails so as not to fillup their inbox with unwanted emails. ([events](https://github.com/Clubs-Council-IIITH/events/commit/c28f926ab4f299eec6668c545ca7e1620f3f1729))
  - Fixed the issue of automated reminder emails hitting the microsoft graph API rate limit: The automated reminder emails were hitting the Microsoft Graph API rate limit, causing failures in sending emails. The issue has been fixed by implementing a sleep to avoid the concurrent requests hitting the rate limit. ([events](https://github.com/Clubs-Council-IIITH/events/commit/2f03091b285003ca006049ccbbd58f84b89098bf))
  - Upgrade other backend packages to keep the codebase up to date: All backend packages have been updated to their latest stable versions to keep the codebase up to date and secure.
  - Updated the recruitment form requirements as asked by the Clubs Council.

- **Work Ongoing**:
  - Documentation of Frontend to be started.
  - Deployment of SLC-Tech website.
  - Script for getting analysis of backend data, like number of events, etc.
  - Projects page for SLC-Tech website.

### **SLC-Tech Website**

- Added Reports from Sep 24 to Mar 25
- Added external documentation link
- Updated footer copyright year
- Updated home page description
- Members sorting fixed
- Added testimonials section (Content to be added)

---

### **Main IIIT site & Blogs site**:

- Created comprehensive tutorials for:
  - Adding columns of various categories on the Gallery page.
  - Creating new menus across different sections.
- Discussions happened around workarounds for the SEO issue related to individual staff profiles being detected unnecessarily.
- Updated the faculty profiles to have a link to their personal academic webpage along with their research interests.
- Enhanced the **Achievements** and **Newsletter** sections on the main site:
  - Added the year **2025** as a new column across all achievement entries.
  - Introduced **DFL** and **Deputed** sections in the main menu.
  - Included **2025** as a selectable option in the dropdown filters for both Achievements and Newsletters.

### **IT Services**:

- Implemented all pages designed for the IT Services website using WordPress.
- Ensured responsive design and mobile compatibility across all pages.

### **Grafana Dashboard** (monitor.iiit.ac.in):

- Node-Wise Connections: Added a new dashboard to monitor node-wise connections. The containers and doma(slc-tech.iiit.ac.in/itservices)ins in a given base machine will show up showing their metrics.

### **CQST Website**:

- Removal of know more and displaying About speaker section for all tiles – Visitors in current CQST site.
- Updating text layout to justify and removal of ‘on’ – Visitors in current cqst website.
- Removal of know more and making the tile/title clickable – Research in current CQST site.
- Fix events layout and icon in current CQST site.

### **Miscellaneous**:

- Made changes in the CQST website with the requirements from preetham.
- Updated boards link on the **UG Admissions** page updated.

### **My IIIT App**:

- **Backend**:
  - Consolidate all mess APIs into one.
  - Added Monsoon 2025 Almanac.

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
