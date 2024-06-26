---
title: "Monthly Progress report - March 2024"
meta_title: ""
description: ""
date: 2024-03-28T06:00:00Z
image: "/images/blogs/april2.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

- Helping Student Alumni Connect Cell
  - Setting up nginx on their server
  - Setting up docker on the server
  - Setting up the CI/CD pipeline for their new websites
  - Dockerizing their websites frontend and backend and making it ready for production
  - Setting up CAS Authentication in the backend/s.
  - Setting up the backend, nginx and all in their main website.
- Migration of docs.iiit.ac.in to new server with backup (JP sir)
- Host vpn.iiit with docker-compose and cas
- Getting and Setting up the OSDG Server
- Adding the Tech team on help.iiit.ac.in
- RnD Showcase website design
- Updating research.iiit.ac.in
  - Announcements Api added to home.
  - Edited menu options.
  - extra text removed from the footer.
  - Increased time to carousel in home.
  - Added carousels for both events and tasks in home page.
  - Publications page order rearranged and added pdf option.
  - In highlights page, Institute Highlights were added.
  - Api setup for all Highlights and Achievements.
  - changed the default image for tasks and events.
  - Number of hits (counter) added to footer.
  - Footer and header adjusted as per the design.
  - Added new pages for all news and all announcements.
  - News and Announcements shown in home is limited to 4 and added show all option.
  - Individual pages for Institute Highlghts, Student Achievements, Faculty Achievements werre added.
  - Everything in Highlights page is limited to 3 and added show all options.
  - Navigator added to key Highlights.
  - New design for centers is added.
  - Overall Css and design adjusted to be responsive.
- LSI Website
  - Non-working People page fixed
  - Overall content layout - like random spaces, etc.
  - The "Opportunities" section on the home page has been templated, allowing for easy editing similar to other sections on the home page.
  - Migrating from the webdev server to a new lsi server
    - Used Docker for Setting up the service
    - Using nginx as reverse proxy
  - Fixed not working website on 27th March.
- Setting up the wiki.js server
  - LDAP Authentication
  - Different User Roles
  - Git backup
  - Conditional Navigation and permissions for pages
- **Clubs Council Website**

  - Setup Phone Number editing permissions - non-editable after the event is approved, etc
  - Set up better redirection for login/logout. Now you go where you came from, after login in CAS.
  - Updated Bug Report URL
  - Updated the bug report links
  - Added validation in user submodules in update mutations.
  - Clubs microservice major refactoring for better codebase.
  - Updated emailing logics and templates for deletion of events, etc
  - Functionality for a club to copy an already existing event.
  - Security Updates - Interfaces microservice
  - GitHub Actions for auto-formatting of the frontend codebase.
  - Replaced normal regex with phone number library for better & flexible phone number validation.
  - Added new inter-communication secret for the backend microservices, which will help keep certain mutations only for inter backend/micro-services use.which will help keep certain mutations only for inter backend/micro-services use.
  - Resolved the [issue](https://github.com/Clubs-Council-IIITH/events/issues/20) regarding the change of the club id, but the changes not reflected in the members and events database.
  - Added the functionality to fetch and store who is approving the event - from all sides, CC, SLC, and SLO.
  - Updated the members' editing such that the roles which are not edited are not pushed back to the state of pending, while now they would remain as approved only (if not edited at all).
  - Clubs Council can also create and send their own room bookings via the website.
  - Added additional and equipment in the mailing template, as asked by SLO.
  - Merge the recentEvents Query into the events query itself
  - Add the functionality to filter to all clubs on the events page
  - Resolved the [issue](https://github.com/Clubs-Council-IIITH/web/issues/37) linked to events ordering and showing them separately - PR in review and testing phase.
  - Fix the phone submission hander in event form
  - Automated sitemap generator

- Clubs Council Recruitment Page (Completed but not pushed to production, and would be done whenever CC starts recruitments)
  - Any student can apply. Form with validation, etc
  - Student can apply only once. 
  - Clubs Council can see all the applications and details.
  - Emailing support to the student and CC on each application.

- Student Body Websites
  - Set up better redirection for login/logout.
  - Updated Bug Report URL
  - Correct the year in the footer
  - Added GitHub action for auto-formatting of the frontend codebase.
  - Setup logout callback

