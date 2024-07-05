---
title: "Monthly Progress report - June 2024"
meta_title: ""
description: ""
date: 2024-07-03T05:00:00Z
image: "/images/blogs/june.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks


- ***IMS APP***

  The current IMS mobile app, made as a project in DASS, was able to fetch all student details using the API provided by IT Office. We further took over the development of the app and along with the help of the original devs to improve the deployment process and release the application as soon as possible. 

  The app is released for Beta Testing. The app is currently in the testing phase and will be released for all students soon.

- Life List
  - Removed all old members from the list, and added all of the current students (UG, PG, and PhD) to the list.
  - Made a new policy for the moderation of the list.

- Elearn-dev (JP sir)
  - Perform mongo and mysql database dump and import to tutor.
  - Perform a course export and import to tutor.
  - Contacting Pratyaksh, Shamil and Rishav Kundu for some help regarding SSO.

- IIIT New Website
  - Changing the content security policy for `pdm.iiit.ac.in` and `pgadmissions.iiit.ac.in` to allow the websites to be embedded.
  - Changing the wordpress code to have sandboxed iframes.

- Designed and coded the webpage for the alumni-awards and worked with IT office to get to the finalized page hosted.

- **Clubs Council Website**

  - Ongoing development on Certificate Generation feature for students.
    - Created a separate page under the profile section to request certificate approval
    - Updated the members service
      - Added new certificate model
      - Added new certificate-related queries
      - Added new certificate-related mutations and utilities
    - Added GraphQL queries and mutations in the web app
  - Ongoing development on the Dark Mode for the Clubs Council Website
  - Event Data Report Generation: Now, Clubs, CC and SLO can download the event data in CSV format for a given date range from the website, with varying levels of access.
  - Holidays: As requested by SLO, holidays are now displayed on the website in the calendar section. SLO can add new holidays from their admin menu.
  - Added budget in the mailing of SLO.
  - Added a drawer dropdown to simplify the main menu strcuture on the website.
  - Change the login function to redirect back to the page from where it was called from
  - Changed Twitter icon and color for the rebranding
  - Fix validation of twitter and youtube. 
  - Fixed the ongoing event coming in the upcoming event section of the all events page, and then added separate ongoing events section
  - Added Clashing Events showcase for the clubs, for them to avoid clashing of events.
  - Added auto-formatting to the backend repos for better readability.


- **PEC Website**: Almost completed. Waiting for the data from the PEC.

  - Added sports facilities section to the site
  - Updated contacts and made minor frontend changes as prescribed
  - Finalized calendar page and made it responsive across devices
  - Made minor changes in the members page as prescribed
  - Migrated to a completely new footer
  - Fixed footer styles in light mode

- **Life Website** : Almost Completed. Awaiting approval from registrar.

  - Major issues fix: The website was not fetching the data from the backend each time on render, causing old data being displayed on the website. Fixed the issue by fetching the data each time the page is rendered.
  - Fixed the footer problem : Since in mobile view of life website the footer was cutting... Fixed that to make whole footer visible when scrolled down 
  - Fixed alignment issues : Fixing footer problem caused  some alignment problem in whole website... So went down thoroughly through whole page and fixed alignment


- **SLC Tech Website**

  - Picked a good hugo theme
  - Dockerized the theme and have production settings
  - Changed the base website to remove all unneeded features
  - Added custom styles
  - Added basic content and images and socials links.
  - Fixed pagination issues, made a blog template, report template etc.
  - Added custom AI generated images as monthly report background.