---
title: "Monthly Progress report - April 2026"
meta_title: ""
description: ""
date: 2026-05-14T08:30:00Z
image: "/images/blogs/april.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — April 2026

### Team Members

- Bhav Beri (Tech Lead)
- Dileepkumar Adari (Web Administrator)
- Abhiram Tilak (System Administrator)
- Evan Bijoy (Web + Design Administrator)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)

### Clubs Council Website

- Remove Event report Submission constrained for selected clubs and exlucde internal events: ([web](https://github.com/Clubs-Council-IIITH/web/pull/188), [events](https://github.com/Clubs-Council-IIITH/events/pull/92))
  * Skips the event report submission constraint for internal-audience events during event submission/editing.
  * Updates validation logic in `EventForm.jsx` to detect `"internal"` audiences before triggering the report confirmation modal.
  * Cleans up and reorganizes GraphQL event query imports in `src/app/manage/events/[id]/page.jsx`.
  * Removes an unused `GET_REPORTS_SUBMISSION_STATUS` import from `src/app/manage/events/page.jsx`.
- Caching in Gallery: ([files](https://github.com/Clubs-Council-IIITH/files/pull/18), )
  - Images were being stored in source code on github, now we store them in static files and provide using files API.
  - Everytime we restart the services, the image's dimensions are fetched and provided to the frontend for preloading shapes

  BEFORE:

  ![img_11.png](/images/reports/Apr26/img_11.png)

  AFTER:
  
  ![img_15.png](/images/reports/Apr26/img_15.png)
    
- Add issue types and PR Templates for creating new issues. ([4587cbf](https://github.com/Clubs-Council-IIITH/web/commit/4587cbf0a5870e286750339b6a64aafc3a51b134), [f761d8e](https://github.com/Clubs-Council-IIITH/web/commit/f761d8e1f1ee39e5dd80301982bf9b2e058a99cb))
  * Enhances the standard PR template with dependency update details, breaking change checks, and build/dev verification steps. 
  * Adds explicit `type` fields (`Bug`, `Feature`) to GitHub issue templates for better issue categorization and workflow consistency.
  ![img_1.png](/images/reports/Apr26/img_1.png)
  ![img_2.png](/images/reports/Apr26/img_2.png)

- Bug Fix: Handle emails in bulk Edit operations instead of using uid (usernames). This was raised when a club tried to use Club Names and it didn't work. ([web](https://github.com/Clubs-Council-IIITH/web/pull/189))
- Bug Fix: We have a constraint that start_date < end_date. The bug was that at 12:00AM the start date and end date by default were allowed to be same, we have added a new constraint to check for it. [(3d7f50b)](https://github.com/Clubs-Council-IIITH/web/commit/3d7f50b56af7b4229d1626f7cf859c573302b594) 
- Bug Fix: When we add an event the Event Model gets validated and made sure all fields are correct before event is made, but during "edit" event that is not done. This commit adds that functionality. ([0a20a7b](https://github.com/Clubs-Council-IIITH/events/commit/0a20a7b55c01588ef01f1e26c139963de828f175))

## Inventory Management System

- Setup items microservice in the backend [efc1005](https://github.com/Clubs-Council-IIITH/items/commit/efc100572b816bb27aa54fbda365660122ada2b7)
  * Introduces the initial implementation of the Items microservice with FastAPI, Strawberry GraphQL, and MongoDB integration. 
  * Adds core database setup, item data models, storage location enums, and GraphQL query/mutation schema configuration. 
  * Sets up containerization and service startup flow using Docker, `uv`, and a custom entrypoint for schema export and API serving. 
  * Configures MongoDB indexing, application lifespan hooks, and inventory item validation rules for consistent data handling. 

### Clubs Server Migration

- Get access to new server and set up the environment for hosting the clubs council website.
- Use help tickets to make JP sir assign testing domains and static IPs. Setup a mock clubs-dev.iiit.ac.in domain for testing and development purposes.
- Book a date for migration and coordinate with JP sir and Hafiz to ensure a smooth transition with minimal downtime.
- Migrate the database, rebuild docker images, and deploy application in the new server.
- Fix minor bugs like hardcoded variable names in the prebuilt docker containers.
- Raise help tickets for whitelisting LDAP and CAS access
![img_3.png](/images/reports/Apr26/img_3.png)
![img_4.png](/images/reports/Apr26/img_4.png)
![img_5.png](/images/reports/Apr26/img_5.png)
![img_6.png](/images/reports/Apr26/img_6.png)

### IIIT Main Site

* New Gallery Page in the main site:
  - Create new gallery in dev site which reduced the page load time from 12 seconds to 1. 
  - This was done by creating new pages for every tab in the existing gallery. 
  - Wait for aproval to move it to main site
  - Migrate the optimized gallery to the main site
  - Fix gallery sidebar styles
![img_7.png](/images/reports/Apr26/img_7.png)

* Uploading NIRF Documents 
  * Reviewed and verified the four NIRF’2026 submission documents (Engineering, Innovation, Overall, and Sustainable Institutions) uploaded for IIIT Hyderabad.
![img_8.png](/images/reports/Apr26/img_8.png)

* Updating diversity page:
  * Change PJNSir's credentials.

  ![img_9.png](/images/reports/Apr26/img_9.png)

* Wordpress Plugin Updates in Main IIIT Site
  * JP Sir created new iiit-sectest.iiit.ac.in. Test the website with new plugins and report any issues to JP Sir and Hafiz.
  * Coordinated with JP Sir and Hafiz regarding the requested content and structural changes.
  * Setup elementor pro plugin and everything required for testing the site.
  ![img_10.png](/images/reports/Apr26/img_10.png)

* Make a default design template for research centers:
![img_12.png](/images/reports/Apr26/img_12.png)

* Request for FAQ Update on Admissions Page
  - Designed and proposed a default website template for IIIT Hyderabad research centers, taking inspiration from the CVIT website structure and layout.
  - Created and shared design mockups/templates for review with the WebAdmin and IT team.
  - Developed and provided the corresponding HTML/code files for the approved research center templates.
  - Ensured the template design supported different research center logos, including dark-background variants, without affecting the website’s visual consistency and usability.
  ![img_11.png](/images/reports/Apr26/img_11.png)
  ![img_14.png](/images/reports/Apr26/img_14.png)

#### Ongoing work

- More work on inventory management system (add frontend and transactions backend)
- Caching commonly used queries (task that was not completed by UG1 trial recruit)
- Achievements page as requested by Vamsi Sir (expected to be done by July)
- Manage knowledge transfer between Dileep and Ashwin + Evan.
