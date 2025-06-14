---
title: "Monthly Progress report - May 2024"
meta_title: ""
description: ""
date: 2024-05-30T05:00:00Z
image: "/images/blogs/may.png"
categories: ["Monthly Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

- ***IMS APP***: New project taken up.

  The current IMS mobile app, made as a project in DASS, was able to fetch all student details using the API provided by IT Office. We further took over the development of the app and along with the help of the original devs to improve the deployment process and release the application as soon as possible. Expected Timeline for the app completion/first release would be June 2024.

  - The old ims-extr link accessible over the public network was reported to the IT Office. The link was taken down for security purposes.
  - A new backend is made for the IMS app
    - The backend is made using the FastAPI framework in Python.
    - The backend is using LDAP for authentication.
    - The backend uses cookies for authorization for frontend API Calls for security.
    - The key and secret of the IMS Api are kept in environment variables, and the environment variables are set in the server.
    - Backend APIs are made in a way so that frontend gets all required data in one call without making multiple calls (As the old API was doing), for example - transcript, etc.
  - A new server is setup for the backend.
    - The server is setup on the IIIT network.
    - The server is setup with a domain name https://ims-app.iiit.ac.in.
    - The server is setup with a SSL certificate for secure communication.
  - Corresponding changes are made in the already existing frontend to support the new backend.
    - The old links of IMS and the secrets are removed from the frontend.
    - Changes are being done to support the new API return strcutures.

- Talked to IT Office regarding the proposal for the moderation of the life, students and research lists and make the moderation process and moderators more transparent. The proposal is under review by the SLC and IT Office.

- **NEW IIITH Website** (IT Office and Outreach Office)
  - Gave certain design issues and suggestions for the new IIITH website. The suggestions are being implemented by the third party team.
  - Reviewed the security of the new IIITH website and gave suggestions for the same. Asked for certain updates in the wordpress plugins.

- Elearn-dev (JP sir)
  - Get barebones tutor working.
  - Try work-arounds for CAS and LDAP working when there is no support.
  - Try to setup SMTP, nilgiri@iiit.ac.in, using the current config
  - Give up on the current setup and try to use Shamil or Pratyaksh work
  - Update the documentation and all procedure till now.
    
- Elastic Search (JP sir)
  - Kibana is giving error. Try to restart the kibana service
  - Change the elasticsearch service, configuration and the kibana links.
  - Realize that the storage being used is 5.2 Tb, report to JP sir and try to clear them up.

- Fix the IFrame issue in the new IIIT website - https://devtest-new.iiit.ac.in (Sent by JP Sir)

  - May 6:
    - Updated the headers to ALLOW-FROM instead of SAMEORIGIN.

  - May 14:
    - Discovered that ALLOW-FROM has been deprecated in all modern browsers. The new recommended method is using Content-Security-Policy with 'frame-ancestors'. Allowed all *.iiit.ac.in domains.
    - This approach still didn't work.
    - Suggested modifying the caller's PHP code on the devtest website instead.

  - May 20:
    - Gained access to the wp-admin account of the devtest-new WordPress console. Edited the page and used the "sandbox" attribute in the iframe.

- **LSI Website**

  - Fixed the Research/Projects link on the Main LSI web page - pointing to the correct URL from webdev to the current lsi website.
  - Fixed the wrong link in one of the events on the homepage.
  - Included a page on Dual Degree (CGD) in the dropdown of the "Programme".
  - Added a banner on the homepage after discussion with Anil sir about the CGD Programme.
  - Made the banner responsive for various devices.

- Upload Issue: Addressed upload issue on https://fac-webpages.iiit.ac.in/abhishek website by changing folder permissions.

- **Clubs Council Website**

  - Major Change: Refactored the architecture design of the backend to separate out the members service from the clubs service, which had very less coupling, still they were running in the same microservice. Made corresponding changes for the other parts of backend to support this change.
  - Bump up packages in frontend repo to resolve certain security vulnerabilities. Didn't go to MUI-X v7, due to many breaking changes.
    - https://github.com/advisories/GHSA-3rq5-2g8h-59hc
    - https://github.com/advisories/GHSA-jjg7-2v4v-x38h
    - https://github.com/advisories/GHSA-cr6f-gf5w-vhrc
  - Updated backend python dependencies to latest versions, to resolve certain moderate to high risk vulnerabilities- 
  - Prevent security concern of one club able to see the manage events page of other clubs events.
  - Security: fix priviliged roles unable to access club events
  - Resolve an error in the events form. If the POC Phone Number updation fails, still the event is created. Now, the event creation fails if the POC Phone Number updation fails.
  - Protected usersByRole query to only internal, to prevent any unauthorized access to user data.
  - Fixed the issue of certain fields were not editable in the draft event by the club.
  - Added Approval Times by the Admins for the events - helps in tracking the approval time of the event, and the clubs to know more about the approval process.
  - Ongoing updates: 
    - Changing the events database schema to store the datetime of the event as two separate variables rather than in tuple format. This is to make querying easier, and prevent other direct db modifications from breaking the datetime format. Also, this would help prevent the datetime issues concerning to the timezones.
    - Report Generation
      - Added graphql request query to generate report.
      - Made changes in code to save files in the designated folder.
      - Modified UI to meet required input specifications for report generation.
  - All updates pushed to the server with the new git setup for new microservice.

- Updated Footers of all 4 student body websites and CC website with the correct link.

- **PEC Website**: Expected to be completed by June 2024.

  - Website Migration: Migrated the PEC website from Next.js to SvelteKit.
  - New Logo: Designed and implemented a new logo for PEC, as there was no existing logo.
  - Revamped Design: Revamped the entire website with a new design for a modern look and feel.
  - Responsive Design: Made the website responsive by designing separate screens for smaller devices.
  - Library Migration: Migrated from the daisyUI library to the SkeletonUI library for more fundamental customization of the website.
  - Static to Dynamic: Changed all static entities to fetch from the backend using a file service.
  - Query Optimization: Modified the GraphQL queries to reduce load on the backend server.
  - Light Theme: Added a light theme option to the website.
  - Footer Update: Updated the website to the latest footer design.
  - Events Section:
      - Implemented an events section with upcoming and past events.
      - Created separate pages for each event to fetch additional information.
  - Members Page: Made a members page using profile pictures of faculty from iiit.ac.in/people/faculty.
  - Calendar Section: Implemented a calendar section for better event management.
  - Gallery Page:
      - Added a gallery page with a pseudo bento grid design.
      - Added a modal to the gallery so each image can be viewed separately with full aspect ratio.
  - Transitions and Carousels: Added transitions for the carousel in mobile screens.
  - Enhanced Navigation: Simplified the navigation by decluttering the navbar and moving the nav links to a newly implemented drawer.

- **Life Website** : Near Completion. Would be deployed in June 2024.

  - Full Home page design revamp: Since last design consisted just a slide show, so the home page of website looked quite dull. So changed the home page design to make it look better . 
  - Dynamic Event section: First implementation of event section consisted just a static showcase of few events. Later the event section was made dynamic so that it fetches the events data from clubs council and displays live data here on website. 
  - Padding & Margin for all other pages: padding and margin refined for other pages to make pages look better. 
  - Changed color theme: Since the previous theme looked dull so changed the color theme of whole website. 
  - Responsiveness of website: The website needed to be responsive for the devices of all screen widths. Handled responsiveness of website by handling alignments and display properly for all screen widths. 
  - Gallery introduction: Since in the first implementation we were displaying 9 images in a column in mobile view, but it looked quite lengthy to scroll down all those images on small width devices. So included a gallery page to display all images at one place and embedded a see more button on home page to redirect people to gallery page. 
  - Handled gallery alignment for all width devices : again the alignments of gallery page needed to be refined accordingly for all screen widths. 
  - Later since displaying 3 pictures also looked lengthy, then we added a slide show view of gallery section for mobile and tab devices. 
  - Handled everything to support dark mode too for all these changes
  - Fixed the highlighting of current page in navigation bar/navigation list
  - Making calendar work properly on mobile section, as well as with the different modes. Handled calendar events clicking to redirect to the event information.
  - Added a carousel for the homepage to make it look better.
  - Made fixes for mobile view, as the previous implementation was not looking good on mobile view.

- **Research Website**

  - Banner: Tried all the provided images from the IT office for the header.
  - Layout Adjustments: Improved gaps and padding for a cleaner look in the website.
  - Header Logos: Reorganized logo placements for better responsiveness.
  - Centers Page: Enhanced content and layout.
  - Menus: Adjusted and removed extra menus.


