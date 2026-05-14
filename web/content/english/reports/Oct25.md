---
title: "Monthly Progress report - October 2025"
meta_title: ""
description: ""
date: 2026-05-13T10:30:00Z
image: "/images/blogs/october.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Clubs Council Website

- **CC not only a admin account**: Currently Clubs Council account was being treated as an admin only account, but now it has been changed to allow them to fill event report for their events and treat their events/members as any other student body. This helps bring all bodies at par and allows SIGs or CC events to be there on website in the same manner as others. PR: [web](https://github.com/Clubs-Council-IIITH/web/pull/163), [events](https://github.com/Clubs-Council-IIITH/events/pull/82), [members](https://github.com/Clubs-Council-IIITH/members/pull/22)

- Simplify the member's Queries by adding aggregations instead of handling member one by one. ([members](https://github.com/Clubs-Council-IIITH/members/commit/080689b4f1c6ecabe1f37e27346cdfef0217d46e))

- Auto approve member requests for student bodies. PR: [members](https://github.com/Clubs-Council-IIITH/members/pull/24)

- _Documentation Fixes_: Documentation fixes for linking object types and other types for better documentation at slc-docs.iiit.ac.in. Added inventory files for pymongo and custom-made strawberry inventory file (strawberry-graphql package documentation does not expose any objects.inv file by default). References: [92aef7c](https://github.com/Clubs-Council-IIITH/api-docs/commit/92aef7ced8de9bcbe12e5ce45af9938209f0935c), [80aed7c](https://github.com/Clubs-Council-IIITH/api-docs/commit/80aed7c13661ab9fe06ad8d2e5fa4853c7ebb8b0), [5cdc902](https://github.com/Clubs-Council-IIITH/events/commit/5cdc902701f72158bffcabb1a6d0eadeb4b762e7), [ee39148](https://github.com/Clubs-Council-IIITH/events/commit/ee3914887d7f6395bc77c0d4d0c6269377b026e3)

- Minor fixes:
    - Dark theme fix for user profile memberships. PR: [web](https://github.com/Clubs-Council-IIITH/web/pull/164)
    - As asked by Clubs Council, enabled past events adding for all clubs and student bodies on the website.
    - Fix event sponsor table as suggested by SLO ([events](https://github.com/Clubs-Council-IIITH/events/commit/c49b2b79a893208cbe68f9bd29f11a1ea112bc5a))
    - Following up with IT office to updated the GraphQL API keys for mailing setup.

### Infrastructure-related

- Migration of containers - coordinating with club/bodies and IT office for it. Containers migrated include:
    - Programming Club
    - SACC
    - CCC
    - Parliament
    - SLC Tech
    - Cultural Council & CLC sites
    - Sports Council
- New Containers created on the new base machine for:
    - NSS
    - Election Commission
- Setting up of Astronautics club website in the decided fashion at [clubs.iiit.ac.in/astronautics](https://clubs.iiit.ac.in/astronautics) (with us providing the redirection support but final website control still with the club)
- Updated SSL certificates for all our services and got it fixed for other clubs and body websites as well.
- Collected details for CAS/LDAP usage for all student related websites for sharing with IT Office.
- Updated docker engine doesn't not allow port exposing from docker network directly (Docker Blog: [https://www.docker.com/blog/docker-engine-28-hardening-container-networking-by-default/](https://www.docker.com/blog/docker-engine-28-hardening-container-networking-by-default/)). Had to fix it by binding the docker network to host port, adding firewall (so as not to expose that port over network) and setting up reverse proxy via nginx.
- Added Rate Limiting (via nginx) to Clubs Council and Life websites for security purposes. Refactored nginx for easier maintainance and understanding of the setup for future.
- **SLC Monitor Setup**: Setup a Monitoring Service using open-source Uptime-Kuma service for monitoring downtimes of different student related websites coming under our team. Integrated email notifications for up and down notifications for the corresponding domains. (Link given in the Important Links section)

### Main IIIT Site

- **Added 2025 NIRF Report:** Uploaded the latest 2025 NIRF report and adjusted the layout to fix content overflow and improve consistency on mobile devices.
- **Implemented Section URLs for Research Centers:** Updated the *research-centers* route to support individual section-based URLs, enhancing navigation and accessibility.
- **Separated Staff from Faculty:** Created a new post type to manage staff profiles separately from faculty members, improving content organization and excluding individual staff pages from SEO indexing.
- **Added YouTube Channel Section in Gallery Page:** Added two buttons to the gallery page linking directly to IIITH's official YouTube channel for better visibility and engagement.
- **Resolved Admin Panel Request Issue:** Fixed a 404 error occurring when submitting requests from the admin panel by ensuring content completion checks during updates.
- **Events Issue**: Fixed IIIT main site date issue for events. Stopped fetching the post date and changed it to the ACF date.

### Lab websites
- Assisted CQST site migration and fixed content loading issues.
- Upgraded loading plugin and made few minor changes in the CQST site.
- CDiTH website setup and theming.

### Miscellaneous

- Portals page API setup to be used for My IIIT app or other purposes ([PR](https://github.com/Clubs-Council-IIITH/portals/pull/5)). But this API is blocked from search engines crawling by robots.txt file.
- CAS Password expired page fixes - still waiting for credentials to test it.
- *Rebuild office-docs:* upgrade the old office-docs nextcloud incrementally, setup new office-docs, setup cas saml for it, setup onlyoffice document server, setup mountpoint for data, install plugins and make sure all settings are right. Add documentation for this in docs.iiit.ac.in (Asked by JP sir)
- **Disabling HTTP support for iiit domains on CAS**: Reported and get the fix deployed.
- Helping make the task and shortlisting candidates for SysAdmins selection.

### Work Ongoing

- Backend Documentation fixes for remaining subgraphs and API repos.
- upgrading nextjs from 14 to 16, also other frontend packages.
- Restrict event creation until all reports are submitted by the club (as asked by Clubs Council)
- Bulk member addition and editing support


### My IIIT App
- **IOS**:
    - **App Store Account**: Followed up with IT Head for the creation of the Apple's app store account for IIITH.
    - **Beta Testing**: Beta Testing of the app with staff and faculty for the release on app-store.
    - Code Changes for supporting iOS

- **Frontend**
    - **Dashboard Customisation**: To allow the user to hide unwanted options from the dashboard screen ([PR](https://github.com/IMS-IIITH/frontend/pull/259))
    - Optimised Mess Menu fetching ([PR](https://github.com/IMS-IIITH/frontend/pull/260)) and removed hardcoding of mess names in upcoming mess menu component.
    - fix timezone issue in LeaveRequest from our side ([commit](https://github.com/IMS-IIITH/frontend/commit/0e8b84eb96eb3c0963ccec0ab35b67605885f64b))
    - Fix username autocomplete issue on app login screen ([commit](https://github.com/IMS-IIITH/frontend/commit/84222eb174174f76ba7ed57b785069655f103e32))
    - Typescript error fixing related to Promises and async function calls ([PR](https://github.com/IMS-IIITH/frontend/pull/255))
    - Remove dark mode warning (for being experimental) and set the default theme to follow system settings, making the dark mode stable.
    - Refresh Control on all pages to allow refreshing the data in a mobile-friendly way - pulling down from the top to refresh ([PR](https://github.com/IMS-IIITH/frontend/pull/261))
    - **Portals Page**: Added a portals page for quick links to all the necessary portals (using the API from portals site) ([PR](https://github.com/IMS-IIITH/frontend/pull/267))
    - Removing unused variables and other grammar fixes throughout the app.

- **Backend**
    - Consolidate all API calls to a single function (for more code consistency) and enable SSL verification even for IMS ([commit](https://github.com/IMS-IIITH/backend/commit/3732b34da4f74c476c2cc9928138eabdaeb44fb4))
    - Website ([PR](https://github.com/IMS-IIITH/backend/pull/33)) - rather than the backend is running JSON return, made a good looking website in case someone opens this link.
    - New leave email notification ([PR](https://github.com/IMS-IIITH/backend/pull/35))
    - Hotfix: (temporarily) switch to contains logic for staff role check - to overcome the data inconsistency in IMS getAuthentication API ([PR](https://github.com/IMS-IIITH/backend/pull/36))
    - Logging config for logging time in backend production logs for better debugging ([commit](https://github.com/IMS-IIITH/backend/commit/05a72d4c29a2c36f48bef851f4ae85ae5d24c7c3))

- **Ongoing**
    - Completing remaining staff-related functionalities in frontend
    - Looking into how to implement reminders and notifications (for things like mess, timetable, assignments, etc)
    - Looking into feasibility of implementing offline support for things like mess QR or timetable.

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [SLC-Tech Website](https://slc-tech.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [IT Services Website](https://slc-tech.iiit.ac.in/itservices)
- [My IIIT App Codebase](https://gitlab.iiit.ac.in/instituteapps)
- [SLC Monitor](slc-monitor.iiit.ac.in) & [Status Pages](https://slc-docs.iiit.ac.in/monitors/)
- [Portals Site](https://portals.iiit.ac.in/)
