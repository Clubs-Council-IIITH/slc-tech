---
title: "Monthly Progress report - August 2024"
meta_title: ""
description: ""
date: 2024-09-03T07:00:00Z
image: "/images/blogs/august.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Life Website
  - Developed a new logo for the Life website.
  - Made improvements to the responsiveness of the Life website and logo placement, ensuring a seamless user experience across different devices and collaborated for an image issue resolution.
  - Adjusted the drawer size on mobile for better user experience.
  - Addressed an edge case where event cards on the Life website homepage were not rendering if a club's poster was unavailable. Implemented solutions to ensure consistent display of event information.

### Clubs Council Website
  - ***Major Features Added***
    - Added Event Edit time and Edit by in the status of the event, so that all parties are aware of the changes.
    - Developed the collaboration clubs feature, adding necessary functionalities to support multi-club events.
    - Added support for displaying last edited times and other relevant member information for all club members, as requested by the Clubs Council (CC).
    - Added Bills status feature for SLO, CC and club to track the status of the bills.
    - Enhanced Event Sharing: Introduced thumbnailing support for sharing event links via platforms like WhatsApp, improving the visibility and appeal of shared content.
    - Resolved a critical security issue by routing all actions routes through export functions.
  - _Package Updates_
    - Updated all of the packages in the frontend part.
    - Updated the Date Picker and Datagrid libraries, and updated the codebase to resolve the breaking changes.
  - _Certificate Generation for Club Members_
    - Completed the coding part of the certificate generation for club members. The feature is under testing, and waiting for the final template to be given by the Clubs Council.
  - Fixed a critical issue where users labeled as "undefined undefined" were undeletable, ensuring proper functionality for user management.
  - Reduce multiple events query call to one on /events page
  - Completely overhauled the members table on the Clubs website, fixing issues with poor design and functionality. The new table now offers a cleaner, more intuitive interface with improved usability.
  - Added and edited the event status feature to handle clashing events more effectively.
  - Updated the approval times section, with new fields.
  - Allow CC to add/edit/delete holidays, as well as fixed the new holiday button.
  - Added Robots crawling file for optimised SEO, and better indexing of the website.


### Alumni Awards Page Update
Edited and deployed updates to the alumni awards page, including new winner details and other necessary requirements.

### Research website changes
Made some changes proposed by lalitha mam for the research website: added key events feature and adjusted some of the buttons, colors of some components and some other changes.

### IMS APP
Major updates done in the month of August for the IMS App. Lot of changes done in regards to UI/UX of the app to make it finally ready for the launch. The app is now in the final stages of reviews and would be launched soon.
  - Exchange position of Yes and No button in the submit leave application form
  - Show full name of the user on the home screen
  - Updated code to use local timezone dates everywhere
  - Add color to present, absent in attendance
  - Updated welcome screen to accomodate automatically going to the dashboard. Refactored the app IA shown to user for better understanding.
  - Updated issues page link
  - Disable submit button on login page if email and password fields are empty
  - Close SideBar before navigating anywhere from it
  - Added logged in user information in the side bar
  - Unified icons for complete app (To maintain consistency throughout the app)
  - Design changes throughout the app.
  - Updated Android version to make clearTextTraffic disabled by default
  - Disable bank details editing from the app
  - Removed course-wide grades from Transcript
  - Get User Device Details while logging in
  - Faculty and Staff Pages: Implementation & Integration of IIIT Soochika
  - Added E-ID Card
  - Added functionality for app blocking from IMS side.
  - Added note about support for x86 based device/s
  - Use Button for taking to Github release page
  - Updated React-Native version and packages
  - Fetch Policy Documents from IMS APP server
  - Simplify sem items list rendering using useEffect
  - For login screen, make keyboard to email type
  - Updated SECURITY.md
  - Fix: don't display current year in drop down when spring choosen
  - Added landline contacts for faculty
  - Display attendance report according to recent dates
  - Updated latest release link for old versions
  - Separated out Leaves based on current Semester and Past Semesters
  - Fix: Force Animation in Sidebar
  - Setup the project for different debug app, so that no need of uninstalling main app
  - Call logout of ims app server for logs from app

### Other Tasks
  - Helping fix the IIIT DNS redirection issue.
  - Fixing the IIIT Main Website Search Engines indexing issue.
