---
title: "Monthly Progress report - May 2025"
meta_title: ""
description: ""
date: 2026-05-13T05:30:00Z
image: "/images/blogs/may.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### **Clubs Council Website**

- **Alternate venues for events**: As asked by SLO, now the events can have alternate venues, which are suggested venues for the event in case the primary venue is not available. The feature of uniqueness of venues between primary and alternate has been implemented, so that the primary venue cannot be one of the alternate venues. ([events](https://github.com/Clubs-Council-IIITH/events/pull/64), [web](https://github.com/Clubs-Council-IIITH/web/pull/145))

- **Code Scanning Issue**: `Github Workflows does not contain permissions` - "If a GitHub Actions job or workflow has no explicit permissions set, then the repository permissions are used. Often these permissions do not adhere to the principle of least privilege and can be reduced to read-only, leaving the write permission only to a specific types as issues: write or pull-requests: write." To make sure the workflows are secure and follow the principle of least privilege, the permissions have been set explicitly in the workflows. Currently done for clubs repository, will be done for other repositories in the next month. 

- **EventForm: Handle location clash while approving events**: Before if two events demanded the same location then both could have been approved, despite being an overlap. This functionality checks for an overlap on time period and location between the being approved event and all approved events, and doesn't allow to approve if the location has already been assigned. This works on both CC & SLO side approvals. ([web](https://github.com/Clubs-Council-IIITH/web/pull/149))

- Added form entry for external participants numbers and display it in manage/events wherever applicable. This will help in managing the events better and keeping track of the number of external participants during the event approval flow. ([events](https://github.com/Clubs-Council-IIITH/events/pull/66), [web](https://github.com/Clubs-Council-IIITH/web/pull/147))

- Script to get the number of events, active clubs, etc from the backend data. This script will help in getting the analysis of the backend data. (To be deployed into production soon) ([events](https://github.com/Clubs-Council-IIITH/events/pull/65))

- **Minor Fixes**:
  - Events report webpage photos/videos link overflow issue sorted ([web](https://github.com/Clubs-Council-IIITH/web/commit/63c647a190feb89a8ac8f390f484015b9988576f))
  - In manage events table, the budget icon was not being shown or shrinking down in certain instances. Fixed that by adding ellipses and prevent icon from shrinking. ([web](https://github.com/Clubs-Council-IIITH/web/pull/148))

- **Work Ongoing**:
  - Documentation of Frontend to be started.
  - Deployment of SLC-Tech website.
  - Fix code scanning issues in all of the repositories.

- **SLC-Tech Website**
  - Added a new page for the SLC-Tech website to showcase the projects made and being maintained by the team. ([PR](https://github.com/Clubs-Council-IIITH/slc-tech/pull/4))

---

### **Main IIIT site & Blogs site**:

- Enhanced **Faculty ACF (Advanced Custom Fields)** by adding two new fields:
  - *Achievements Link*
  - *Research Area Link*
  (Primarily to support adjunct faculty associated with research centers.)
- Resolved formatting issue involving unexpected bold text occurrences across the faculty page using custom CSS fixes.
- Integrated a **Power BI Dashboard** to display statistics related to disclosures and other relevant data.

### **IT Services Site**:

- Incorporated feedback and made the required updates to the IT Services pages as suggested by the IT Head.

### **CQST Website**:

- Set up subdirectory in current website to develop on new theme.
- Make plugins for the event and calendar API for the website.
- Design the page structures and layout.

### **Miscellaneous**:

- New intranet portal deployment: Made changes in the codebase to help with deployment in production & Made Apache configs to host the new website alongside the already existing dev intranet website.
- Got details and basic setup with openssh in new base machine.

### **My IIIT App**:

- **Backend**:
  - Added APIs to fetch mess preferences
  - Added dynamic Mess Menu fetching
  - Updated to latest version of office365 and shift handling of html body and added reply to address
  - Fix the mess menu route
  - Messes info route add minimal param to get messes info without consuming much bandwidth
  - Update the max cancellations route with month and year
  - Remove restriction on mess names to make it dynamic in APIs
- **Frontend**:
  - Reduce from 6 API calls for config data to a single API call
  - Added Sports Attendance Feature
  - Remove unwanted lucide-react-native dependency
  - Added Mess preferences feature
  - Use the new API for mess menus
  - Fix unregistered meal status descriptor
  - Scrollbar looks awkward in mobile app, so removed it from the alamanac page
  - Fixed version naming in the github action
  - Handle error dialog box closing on Mess Registrations page
  - Dynamic mess menu
  
- **In Progress**:
  - Major package updates to the app

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
