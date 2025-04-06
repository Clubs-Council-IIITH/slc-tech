---
title: "Monthly Progress report - October 2024"
meta_title: ""
description: ""
date: 2024-11-09T05:30:00Z
image: "/images/blogs/october.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website
- ***Major***:
    - Add event rejection by Clubs Council Feature.
    - Added Content-Security-Policy headers for better security. Fixed Icon library CSP issues. Handled MUI CSP issues.
    - Added Square Banner for clubs to showcase on the clubs grid. (Feature requested by a user via feedback form)
    - Updated frontend packages to the latest version for security and performance improvements.
    - Updated backend packages to resolve the security vulnerabilities reported in starlette, urlq and other packages - Improved security.
    - Major breaking update in the GraphQL router and handling of the gateway. Updated how each microservice is connected to the gateway, and gateway fetches the schema from each microservice.
    - Fixed event og img tag having wrong path when the link for an event is shared on social media.

- Fix Events Table sorting/filtering for some of the columns due to different valuegetters.
- Added Equipment and Additional Requests in Data Download
- Allowed approved/pending/all events for data download (As asked by Vamsi sir)
- Updated event rejection mail template.
- Adjusted Calendar header for mobiles.
- Updated all events option into a dropdown for better understanding (Data download page) - UX improvement.
- Event Form: add budget description word wrap and error, as pointed out by Clubs Council.
- Change maxfilesize of club logos and image previews of the same shape as wanted, for better understanding of how the image would look.
- Display Alert for mobile view of event editing form
- Updated EventsBudgetTable formatting of amount and description fields.
- Fix Members Position Table UI (for responsive view, and showing the current status of confirmation)
- Minor bug fixed on wrong import for member approval.
- Now, slc is also allowed to download events data of any club
- Fixed python-multipart version
- Change colour of Information not available text in EventApprovalStatus to remove confusion with other text.
- In manage events table, add ongoing events tag.
- Refactor post-event timeline and financial info (for better understanding and clarity while future development in codebase)
- Fix env variables not being read correctly. This could have caused major security issues if not fixed.
- Added security.txt file (recommended by Mozilla Observatory).
- Trim the leading and trailing whitespaces in name and description in event form
- **Work Ongoing**:
    - Certificate Template Design.
    - Events Pagination (Major Update to the website) to reduce the load on the server and improve performance of the events page.

### Life Website
Updated npm packages to fix security vulnerabilities and updated the website to the latest version of the framework.

### Logo for SLC Tech Team
Created an initial draft of the SLC Tech Team logo, with plans to enhance and finalize it.

----

### VPN Website
- Major Website UI overhaul. Updated the website to the latest design by Evan Bijoy.

### Portals Website
- Full redesign of the Portals page, from scratch (Old one was outdated, and built in PHP).
- Handled the responsiveness of the webpage for various devices.
- Added a switch to change the theme of the webpage from light to dark. Used local storage to store the theme preference.

### Research Website Changes
- Managed and made the images on the homepage responsive, fixing the stretching issue.
- Implemented "Talks of the Year" and set up pagination for better navigation.
- Resolved image issues on the Researchers page and migrated all images to the research webpage, removing dependency on other websites.
- Added links to the names of professors on the Researchers page.

### Miscellaneous
- Monitored the access logs of IMS. Changed the script to generate a report for better monitoring, using GoAccess.
- Fixed a security issue in passwordreset.iiit.ac.in, where the .git folder was open in httpd. Blocked hidden files in httpd.
- Jp sir asked for mailtrain, email automation, where he needed to send email to all staff and faculty about their onedrive usage. Made a template for the same.

### CAS Redesign
- Major redesign of the CAS login page started. The new design is being implemented from scratch for the newer version of CAS.
- The integration is quite challenging. The old cas login webpage resources are not compatible to new CAS version. Though integration has been partially handled, just mobile view is remaining and also there are few things which need to get fixed. ( Integration in progress )

### IMS App
- Fix two errors related to key props of Mess Menu.
- Enhancing design of the mess screens to match with other screens.
- Added w.e.f. and lastUpdated after the items list instead of sticky footer
- Added flexible movement to the scroll of the mess selectors
- Added our own custom sign in keys, to avoid the use of the default keys, and to make the app more secure.
- Updated links to point to gitlab
- Added Single Sign In for the app, to avoid multiple sign-ins.
- Updated Security Policy.
- Drafted a new user manual for the app.
- Handle App Blocked in Welcome Screen
- Updated UI of the Welcome Screen and added FadeIn Animation
- MyProfile: change the link for academic help

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [VPN Website](https://vpn.iiit.ac.in)
- [Research Website](https://research.iiit.ac.in)
- [Portals Website](https://portals.iiit.ac.in)
