---
title: "Monthly Progress report - September 2024"
meta_title: ""
description: ""
date: 2024-10-08T05:30:00Z
image: "/images/blogs/september.png"
categories: ["Monthly Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website
- Metadata
    - Add support for og:image in event links.
    - Added Google Search Console for better indexing, and performance monitoring.
    - Updated site metadata for better SEO. Added description, tags, and updated titles.
- Updated student body events going directly to SLO.
- For student bodies, SLO only approves the budget also.
- Fault Tolerance for users who left college and entries are not in LDAP. Fixed that user not being able to be deleted from a club.
- Fix MembersTable error in fetching roles
- Fix alignment and icons in members table
- Updated webpack for security advisory https://github.com/advisories/GHSA-4vvj-4cpr-p986
- Updated regex for youtube, etc. in the club editing form.
- Increase static files cache time for better performance.
- Improved Accessibility of the website, for better scores and indexing, along with general user experience for differently-abled users.
- Manually add carousel css file, and removed fetching of font file in it. This was causing a delay in loading the carousel, and now the performance is improved drastically.
- Updated robots.txt to ignore js chunk files.
- Updated carousel images and compressed them for better performance.
- Fix the MuI modularisation issue. Mui is by default modularise, so changed accordingly in the configuration (https://nextjs.org/docs/app/api-reference/next-config-js/optimizePackageImports)(https://github.com/vercel/next.js/pull/50900)
- Fixed CC page redirects.
- Simplify Gallery Images Loading View, and added skeleton-loading for images as placeholder. Placeholder animation added for the images.
- Fix imageupload in event form. Add important features like file compression and support for custom filenames.
- Fix Pydantic deprecated functions in version 2 (Backend)
- Fixed pylance warnings about types used in the backend code, for better code quality.
- Updated frontend Packages. MUI v6 updated (Major update).
- Fix Holidays Table sorting issue (the date field)
- Disallow indexing of club query on events page separately.
- Update event code numbering to consider last max number, rather than count, to avoid conflicts.
- Fix normal public user not able to upload profile picture.

### Life Website
Remove deprecated recent events query

---

### Alumni Awards Page Update
- Created dedicated Winners pages for both 2023 and 2023 Alumni Awards.
- Created a dedicated gallery page and award ceremony pages to showcase images and links.
- Made minor edits to other parts of the website.

### Research Website Changes
- Implemented changes proposed by Lalitha Ma'am to enhance responsiveness and correct wrongly configured images.

### VPN Website UI Fixes
- Updated UI for frontend by adding videos and updating width for the side bar
- Updated links to email and phone in sidebar in footer.

### IMS APP
- Separate out Recent and Older Leave Requests.
- Force Animation in Sidebar
- Disable warnings of react-native-reanimated.
- Setup the project for different debug app, so that no need of uninstalling main app. Brings in a major ease for development and testing, as the project goes in production.
- Logout logging in the app.
- Fix no courses found error.
- Updated UI of the welcome screen.
- Fixed Pre-Release Version info on Welcome Screen
- Fixing Loading issue not shown initially on welcome screen
- Display all three icons to contacts list and disable if no detail found (as recommended by Lalitha mam)
- Added support for PDF download of different documents.
- Re-organised the screens & files for more logical structuring and lesser number of folders
- Upgrade package versions gradle and npm.
- Eslint fixes for eslint 9
- Fix react-native-vector-icons not found error from @rneui/base
- Transcript: remove the selector and show all GPAs in one page (As recommended by Registrar)
- Fixed jest and @rneui/base issues.
- Added Almanacs and list of almanacs in the app.
- Contacts: add a copy button in detail page for easy copying of contacts.
- Show leave requests in course wise attendance for students ease.
- Added Recent Events from the CC backend
- Removed ChildrenWithProps of GQL_Client for eslint error
- Added Scrollview in welcome screen for small screen devices
- Build two seperate apk files, one for arm devices and another for x86. This is to reduce the size of the apk file.
- Added scroll to login screen
- Updated basic layout for mess menu
- Completely added Mess Menu in the app.
- updated the askforpermissions function to ask for permissions only when needed, and handle the case when the user denies the permission.
- Add IIIT email validation on login page
- Added Meal-wise Menu selection
- Added Curriculum details for all branches.
- Shifted all documents rendering screens into one for code reusability.

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [Research Website](https://research.iiit.ac.in)
- [VPN Website](https://vpn.iiit.ac.in)
