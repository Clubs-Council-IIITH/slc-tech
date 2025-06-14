---
title: "Monthly Progress report - April 2024"
meta_title: ""
description: ""
date: 2024-05-21T05:00:00Z
image: "/images/blogs/april.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Work done on the research website

- Resized and optimized image sizes across all pages to ensure proper alignment
  and faster loading times.
- Implemented a new banner design to enhance visual appeal and updated menus and
  logos for improved
  navigation and branding consistency.
- Developed and implemented a new “Centers” page layout, incorporating intuitive
  design elements and efficient
  coding practices.
- Redesigned the news and announcement sections, enhancing readability and
  visual presentation for better
  engagement.
- Ensured website responsiveness across various devices and screen sizes,
  improving user experience and
  accessibility.
- Created individualized highlight pages for different projects or initiatives,
  tailoring content and design to each
  specific focus area for increased relevance an

### Work done on the LSI website

Designed a sample banner for the admissions advertisement of the new branch on
the LSI website, focusing on
attracting prospective students and promoting enrollment.

- Iterated through multiple revisions of the banner design, refining visual
  elements, messaging, and overall
  effectiveness to meet client expectations and campaign obje

### Life Website

- Dockerize the developement and add a dev-friendly dev.sh.
- Introduced an alternative carousel design that maintains user viewport
  integrity, ensuring a seamless browsing
  experience without unintended layout disruptions.
- Cleaned up the repository by removing unnecessary files, improving
  organization and reducing clutter.
- Made updates and improvements to the calendar page, potentially including
  changes to layout, functionality,
  or content.
- Enhanced the all bodies page by sorting the list and improving redirection
  functionality, optimizing navigation
  and user experien

### PEC Website

- Add section for all types of staff including board members, current members
  etc.
- about section
- gallery section
- downloading yearly calendar section
- added profile photos for committee m

- Added section for all staff types including board members, current members, etc.
  Implemented “About” section.
- Created gallery section. Added yearly calendar download section. Included
  profile photos for

### Maintenance of docs.iiit.ac.in (with JP sir)

- Identified and resolved nginx 502 gateway errors occurring upon rebooting the docs.iiit.ac.in server,
  ensuring uninterrupted access to the documentation portal.
- Adjusted docker network settings to maintain network configuration consistency even after server restarts,
  enhancing stability and reliability of the docs.iiit.ac.in environment.
- Investigated and addressed recurring PostgreSQL disconnection issues with the WikiJS application, imple-
  menting measures to stabilize database connections and improve system performance.
- Developed a fix.sh script to automate the resolution of temporary service disruptions on docs.iiit.ac.in,
  providing a quick and reliable solution for addressing downtime incidents.

### Fix Office-docs corruption

- Resolved issues with collabaro.iiit.ac.in by leveraging built-in plugins for viewing office files, eliminating
  the need for a separate service and improving document accessibility.
- Initiated the migration process of office-docs to Rocky Linux 9, troubleshooting and resolving Redis and
  PHP-related issues, and optimizing PHP-FPM settings for improved performance.
- Identified and addressed corrupted storage2 used for office-docs backup, recommending running e2fsck on the
  storage2 server and performing multiple restarts to rectify the corruption and restore data integrity.

### LDAPsearch to find LastLoginTime (JP Sir)

- Use LDAP search to find old unused email of alumni using ldapsearch using the field LastLoginTime.
- Make resusable scripts to help make CSV files instantly using ldapsearch
- Use LDAP search to find unused student body emails.

### Elearn server migration and fixing issues (JP Sir)

- Investigated and debugged the issue with CAS authentication not functioning properly in Open edX.
  - Researched and documented the process of setting up SAML CAS authentication in Open edX on the
    elearn.iiit.ac.in domain.
  - Explored the possibility of resolving the issue by renewing the SSL certificates for the elearn.iiit.ac.in
    domain.
- Initiated the migration process for Open edX.
  - Obtained a new temporary domain, elearn-dev.iiit.ac.in, and set up an Ubuntu container for installing
    Open edX.
  - Sought access to the old setup guide for Open edX and tried figuring out the setup.
  - Explored alternative installation methods besides Tutor for Open edX.
  - Investigated and addressed the “rlimits not permitted” error in Open edX attributed to the use of an
    LXC container instead of a virtual machine.
  - Deployed a new virtual machine running Ubuntu 24.04 and attempted to set up Open edX using Tutor.
  - Configured an nginx reverse proxy and disabled the default Caddy server in an attempt to resolve
    configuration conflicts.

### Work done on cc web

- Start work on report generation for the events for both clubs, cc and the SLO. This will be later used as a
  record of all events when College Inspection takes place.
- Responsiveness in mobile
  - Remove extra columns in member details page being rendered without content.
  - Fix overflowing text in mobile view in members page.
    2
- Fix security vulnerability of being able to add spurious members to club page.
- In events page change the order of events being shown. Upcoming events should be in nearest-to-further order.
  Older events should be latest to old.
- Revamp the bug-report page to contain 3 different ways to report the bug on the severity and the type of user.
- Make improvements to the developement process so its easy for new contributors:
  - Automate using npm i everytime the repo is cloned before docker containers are started.
  - Use the .env.example directly during developement page. Instead of renaming it to .env multiple times.
- Update inter-communication secret, after handling merge conflicts and heavy unit testing.
- Fix the members page, having to approve all roles if one role is changed.
- Add a new page cc_approver to help Clubs-Council approve events.
- Fix/Investigate database corruption causing all event times to become 2 minutes instead.
- Implemented a robust reporting system to generate detailed reports for events hosted by clubs, CC, and the
  Student Leadership Office (SLO), enhancing transparency and accountability in event management.
- Enhanced mobile responsiveness by addressing issues such as removing unnecessary columns in the member
  details page and fixing text overflow problems on mobile views of the members page, ensuring a seamless user
  experience across devices.
- Addressed a security vulnerability that allowed unauthorized addition of members to club pages, implementing
  measures to prevent spurious member additions and safeguard data integrity.
- Optimized the events page by reordering events to display upcoming events in nearest-to-furthest order and
  older events in latest-to-oldest order, improving user engagement and navigation.
- Overhauled the bug-report page to provide three distinct methods for reporting bugs based on severity and
  user type, enhancing user experience and facilitating efficient bug tracking and resolution.
- Streamlined the development process to ease onboarding for new contributors, including automating npm
  installation upon repository cloning and utilizing the .env.example file directly during development instead
  of renaming it multiple times.
- Updated inter-communication secrets following thorough handling of merge conflicts and rigorous unit testing,
  ensuring secure and reliable communication between different components of the system.
- Resolved an issue on the members page requiring approval for all roles when modifying a single role, improving
  administrative efficiency and user management processes.
- Introduced a new page, cc_approver, to assist Clubs-Council in the efficient approval of events, streamlining
  event management workflows and enhancing collaboration between stakeholders.
- Investigated and addressed database corruption issues causing event times to become uniformly set at 2
  minutes, ensuring data accuracy and system reliability.

### Documentation for SLC-Tech

- Setup Wiki-js for slc-tech.iiit.ac.in. Add default pages and authentication for each of the Clubs and
  SLO.
- Start the documentation for SLC-Tech server.

### Helping Clubs-Council with recruitments

- Configured the CC Recruitments page specifically for the purpose of facilitating club-council recruitments,
  ensuring that it’s optimized for the application process and easy access for potential candidates.
- Provided CC with a thorough dataset comprising event details and information about various clubs, empowering
  them with the necessary resources to create informative and engaging introductory presentations.
- Assigned Abhiram the task of delivering a presentation during the CC introduction session, focusing on
  showcasing the accomplishments and goals of the CC-Tech team.
- Gathered and shared all recruitment form submissions along with applicant email information with CC,
  enabling them to efficiently manage and follow up on potential recruits.
