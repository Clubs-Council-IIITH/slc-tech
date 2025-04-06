---
title: "Monthly Progress report - December 2024"
meta_title: ""
description: ""
date: 2025-01-05T05:30:00Z
image: "/images/blogs/december.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website

- **_Major_**:
    - Dynamically use CAS clients as per request to handle login into different domains hosted from the same server ([167e59b](https://github.com/Clubs-Council-IIITH/auth/commit/167e59b851336c6d16a074b5926efbea047c6bd6))
    - Category for Clubs/Bodies Refactoring - long-term change for better structuring of the clubs model and allow for efficient changes in the future. ([clubs#17](https://github.com/Clubs-Council-IIITH/clubs/pull/17). [web$127](https://github.com/Clubs-Council-IIITH/web/pull/127), [events#53](https://github.com/Clubs-Council-IIITH/events/pull/53), and [#3e1e115](https://github.com/Clubs-Council-IIITH/clubs/commit/3e1e115335a125eaa739c00591b099ea4f815419))
    - Static files handling support in files service + Secure the filenames even in the download functions ([files#7](https://github.com/Clubs-Council-IIITH/files/pull/7))
    - Allow collab clubs also to see private details of events - bills status, budget, venue and status. ([#ec49e4d](https://github.com/Clubs-Council-IIITH/events/pull/52/commits/ec49e4d54c190273e83975a47a77befccf1d7bc2), [#991d09f](https://github.com/Clubs-Council-IIITH/events/pull/52/commits/991d09f09fa3ca960f292575eafa465923c572c4))
    - Event Reports - long-time pending feature. Additional features added for making PDF and word files from frontend. ([events#52](https://github.com/Clubs-Council-IIITH/events/pull/52) and [web#125](https://github.com/Clubs-Council-IIITH/web/pull/125))
    - Event Download Option - Download entire event as PDF from the manage events page ([web#125](https://github.com/Clubs-Council-IIITH/web/pull/125))
    - Static Policy Documents hosting support ([interfaces#13](https://github.com/Clubs-Council-IIITH/interfaces/pull/13) and [web#115](https://github.com/Clubs-Council-IIITH/web/pull/115))
    - AddtoCalendar Feature for public events ([web#119](https://github.com/Clubs-Council-IIITH/web/pull/119))
    - UI/UX change: Move dark mode button outside and simplify login button/dropdown ([web#133](https://github.com/Clubs-Council-IIITH/web/pull/133))

- Due to a file size limit in nginx, that only 4096 is allowed, we are not able to load a big nginx configuraiton file (https://serverfault.com/a/1069193). Split the main file accross files ([#reverse-proxy#2](https://github.com/Clubs-Council-IIITH/reverse-proxy/pull/2))
- Clubs Council Reverse Proxy: Fix vhost not found error ([#45690bf](https://github.com/Clubs-Council-IIITH/reverse-proxy/commit/45690bf0f2c694ebfc3c5e17e86452800156ad05))
- Major change in deployment hooks for individual services. At build time, due to the limitations of Docker, the environment variables were not abailable at build time. We made changes in the deployment hooks to make the environment variables available at build time. ([#d6a26a9](https://github.com/Clubs-Council-IIITH/hooks/commit/d6a26a99f1e32b672c369a676802d40f54fe2ab9))
- Take maxSize argument for files ([#cd65ce8](https://github.com/Clubs-Council-IIITH/files/commit/cd65ce823d9c568207b400b8c7f9de9bd692be07))
- Strip description and name of event before saving in db ([#bb4d3b0](https://github.com/Clubs-Council-IIITH/events/commit/bb4d3b06f8e675e1c8c006605f027c0049cf44d4))
- Updated event model str types to more understandable one ([#4e53a89](https://github.com/Clubs-Council-IIITH/events/pull/52/commits/4e53a890a3ec6a7e8101b7191bd5ab180702c213))
- Updated phone input type ([#8ac490a](https://github.com/Clubs-Council-IIITH/users/commit/8ac490a6147e21ac1a8bd9e092ccab242056ab91))
- Divided the fileupload function to handle images and PDFs seperately and updated queries to support static files ([#daa1b8c](https://github.com/Clubs-Council-IIITH/web/pull/115/commits/daa1b8cbbf80e77789f83c5dd287b32650fa0259))
- When club not selected, don't keep the POC bar just loading in events form - reported by Clubs Council ([#9a9ded0](https://github.com/Clubs-Council-IIITH/web/pull/115/commits/9a9ded086aa247bc87884af0bf4898beb9bdc3d5))
- Tech Team page members sorting - same as CC page ([#4de9b44](https://github.com/Clubs-Council-IIITH/web/commit/4de9b44e1454b3b102fd98be2dca27a649942da7))
- Profile: redirect 404 for empty profiles and disable clicking in MemberCard ([web#121](https://github.com/Clubs-Council-IIITH/web/pull/121))
- Updated the showing of user details to different users ([#4f963e4](https://github.com/Clubs-Council-IIITH/web/commit/4f963e455e48732ec453d212c5e653f52b1f8655))
- Fix logos icons ([web#118](https://github.com/Clubs-Council-IIITH/web/pull/118))
- Fix profile edit page access control. Currently anyone logged in access edit page for anyone else - Fixed now ([#e91ab0e](https://github.com/Clubs-Council-IIITH/web/commit/e91ab0e2379f0ecafc12eb2c30f9bb066eefb045))
- Opengraph: add description and custom title ([web#124](https://github.com/Clubs-Council-IIITH/web/pull/124))
- Match the /student-bodies page with /clubs page(s). And handle error, redirect for student-body pages ([#f3c388f](https://github.com/Clubs-Council-IIITH/web/commit/f3c388fb803476220fe86e0c1fbe739591d44335))
- Simplify Middleware file ([web#126](https://github.com/Clubs-Council-IIITH/web/pull/126))
- Handle clubs with no members in EventForm ([#18229ae](https://github.com/Clubs-Council-IIITH/web/commit/18229aed68ecd171442e643c3d42e1e63058ca54))
- Fix Date Parsing Error ([#46bbb6b](https://github.com/Clubs-Council-IIITH/web/commit/46bbb6bf47ee16d590ee6cbe5b113ab158aa32d8))
- Added version to the CC Static Policy Docs ([web#129](https://github.com/Clubs-Council-IIITH/web/pull/129))
- DocItem for mobile - handle iframe not loading ([#72d4db8](https://github.com/Clubs-Council-IIITH/web/commit/72d4db811d934cd95683b6d23a965a4e5b808789))
- EventTable: add an indication for events with budget with icon ([web#130](https://github.com/Clubs-Council-IIITH/web/pull/130))
- Fix the imageupload logic, which got broken due to the changes in the fileupload logic ([web#132](https://github.com/Clubs-Council-IIITH/web/pull/132))

- **Work Ongoing**:
    - Image compression.
    - Documentation of Backend
    - Members Data Download functionality

### Student Body Websites

Remove studentBody variable based on CC backend refactoring to make compatible with the new changes.

---

### Portals Site
- Added VPN warning for sites that are not accessible from outside the campus network. ([#dd66e72](https://github.com/Clubs-Council-IIITH/portals/commit/dd66e72e1e2bf3e5f3ab5a223f6a2173f190b35a))
- Updated VPN Warning text and split into different component for modularity ([#319d384](https://github.com/Clubs-Council-IIITH/portals/commit/319d3841dd9ac5d71532486d75692a63c424e547))
- Added tooltip to showcase the link of the button ([#82234ea](https://github.com/Clubs-Council-IIITH/portals/commit/82234eaf9e0033028c6aaaf0541fefb9380e029f))
- Added Google Search Console for the portals website ([#af41c4e](https://github.com/Clubs-Council-IIITH/portals/commit/af41c4e15230493a1cd329c2e3ff5a84689719bb))
- Updated the Research centers and publications page link to new research website ([#f887d21](https://github.com/Clubs-Council-IIITH/portals/commit/f887d21c5a0a0db3cfe42c8f71e4342dc9ace332))

### CAS Redesign

- Handled edge cases of responsiveness of CAS for mobile devices: The responsiveness of CAS was failing for some edge cases in mobile devices so handled that
-  Implemented *dark* mode as per system preference: Added functionality of dark mode view if system preference is dark mode. This allows us to provide user CAS in their preferred theme. 
- Re-designed the error pages, warning pages and log out - login pages: Since old design was quite outdated and colors were being used to highlight emergency....so re-designed those pages of warning, errors and login-logout messages using icons to highlight emergency.  
- Handled responsiveness of the error, warning and login-logout message pages: Handled responsiveness of the pages so that they look good in mobiles and tablets.

Everything is completed and the new design is ready to be deployed. The new design is live at [login-new.iiit.ac.in](https://login-new.iiit.ac.in)

### Research website
- Designed students travel and research student pages. One remaining page is in progress.

### Miscellaneous
- Got the new server and email login credentials for the research fest website. Setup the server for them.

----

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [Research Website](https://research.iiit.ac.in)
- [Portals Website](https://portals.iiit.ac.in)
- [New CAS Design](https://login-new.iiit.ac.in)