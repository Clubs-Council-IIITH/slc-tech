---
title: "Monthly Progress report - November 2024"
meta_title: ""
description: ""
date: 2024-12-12T05:30:00Z
image: "/images/blogs/november.png"
categories: ["Monthly Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### SLC Tech Team Logo
- Created a new logo for the SLC Tech Team: https://clubs.iiit.ac.in/assets/slc-tech-logo-black.svg

### Clubs Council Website
We have added all the codebase for the Clubs Council Website on gitlab.iiit.ac.in under the group of slc-tech-team: https://gitlab.iiit.ac.in/slc-tech-team/

- **_Major_**:
    - Clubs Council to Life Website Conversion (https://github.com/Clubs-Council-IIITH/web/pull/113):
    
        - Fix DrawerItem path checking for active links
        - Updated side menu
        - Updated Homepage and the About Clubs Council page
        - Updated site metadata
        - Updated the footer
        - Created a new opengraph image for the new site
        - Added version history of the website on changelog page
        - Move tech team members page to different parent URL
        - Dedicated SLC Tech Team page
        - Updated primary dark and darker colors for dark mode
        - Handle old about page url for CC (for search indexes, etc)
        - Updated sitemap
    - Fixed Clubs Council Server nginx to allow handling multiple domains together (https://github.com/Clubs-Council-IIITH/reverse-proxy/commits/master/)
    - Added pagination for events page, to reduce the load on the server and improve performance of the events page (https://github.com/Clubs-Council-IIITH/web/pull/103 & https://github.com/Clubs-Council-IIITH/events/pull/46)
    - Hide the layout shift in gallery under loading bar. Plus simplify the ImageMasonary component ([#4274cf0](https://github.com/Clubs-Council-IIITH/web/commit/4274cf033708bd8b149ac2a2dedbdfba158c22ba))
    - Added custom 404 page (https://github.com/Clubs-Council-IIITH/web/pull/116)
    - Added code for deleting a file from backend (internal API) (https://github.com/Clubs-Council-IIITH/files/pull/8)
- Added noreferrer rel to external links in Footer, changelog, bug-report, etc (https://github.com/Clubs-Council-IIITH/web/pull/112)
- Fixed changelog page uptime badge not loading ([#a41f661](https://github.com/Clubs-Council-IIITH/web/commit/a41f661e8e0130e7b226e0a79c3971fc4e6c1027))
- Fix the production build failing. ([#030b6d2](https://github.com/Clubs-Council-IIITH/web/commit/030b6d25355db81d7199acdc6195102457fd2b2b))
- Match sorting on the changelog page to the cc members page([#8917a35](https://github.com/Clubs-Council-IIITH/web/commit/8917a356844f4fd2958d2802c00c8170cebf6da7))
- dev.Dockerfile fix 'FromAsCasing' Warning ([#2b7dfd5](https://github.com/Clubs-Council-IIITH/web/commit/2b7dfd510f0627e7b42edaf21ed92f9a4b3b795a))
- Fix: When club not selected, POC bar just loading, not showing any message ([#b12b73d](https://github.com/Clubs-Council-IIITH/web/commit/b12b73deae23127999b24a11022d9ea95e71eeff))
- Fixed middleware error on redirect paths ([#cc173b8](https://github.com/Clubs-Council-IIITH/web/commit/cc173b8fbb8e7c01652b765a2165087169886b6b))
- Fix events page build error due to cookies (in getClient) being called outside the scope of functions https://nextjs.org/docs/messages/next-dynamic-api-wrong-context ([#748842e](https://github.com/Clubs-Council-IIITH/web/commit/748842eb698af4a9ee2da6dcdc7465bab67ce54c))
- Rather than progressbar, use Skeleton animation on gallery image ([#357ebc1](https://github.com/Clubs-Council-IIITH/web/commit/357ebc1f848558312706bf83ea24c02139e04f8e))
- Handle club not found error in /clubs/[id] route ([#](https://github.com/Clubs-Council-IIITH/web/pull/116/commits/bf5da705eecfe53875cc280ba6e9c53e492822b4))
- Fix error by prettier in mdx files ([#82d31b4](https://github.com/Clubs-Council-IIITH/web/commit/82d31b4ebc90e78ec168beea72b99596ae651872))
- Move from adding favicon in head to normal nextjs way (https://nextjs.org/docs/app/building-your-application/upgrading/app-router-migration#step-3-migrating-nexthead) ([#67aee15](https://github.com/Clubs-Council-IIITH/web/commit/67aee157de8d9ded0ebb19b1dfebb51d01aa4c79))
- Added sitemaps both for CC and life separately ([#0949a39](https://github.com/Clubs-Council-IIITH/web/commit/0949a39d430cda924721ebafe58e02323fd72adb))
- Resolved Security Advisory (https://github.com/advisories/GHSA-f96h-pmfr-66vw) in backend packages.
- Remove deprecated datetime.utcnow ([#f80a26fa](https://github.com/Clubs-Council-IIITH/clubs/commit/f80a26fa5078cab51ff6ea312e7e5b2fc8588ed6))
- Fix issues with AnyHttpUrl (Related: [pydantic/pydantic#6395](https://github.com/pydantic/pydantic/discussions/6395)) ([#1a59484](https://github.com/Clubs-Council-IIITH/clubs/commit/1a59484d2f3eab7797eb6a1c5263b43cddb2322f))
- Security: Getting signed upload url should be called just internally, so adding inter_communication_secret ([#d0f324c](https://github.com/Clubs-Council-IIITH/files/commit/d0f324c3873eb77ceafc79050fdccd50a4fed982))
- Deleting old event posters when uploaded a new one ([#826b075](https://github.com/Clubs-Council-IIITH/events/commit/826b075e0e9afec8dfd8e938b40747ae2bdaee0a))
- Fix issues with HttpUrl (Related: [pydantic/pydantic#6395](https://github.com/pydantic/pydantic/discussions/6395)) similar to [Clubs-Council-IIITH/clubs@1a59484](https://github.com/Clubs-Council-IIITH/clubs/commit/1a59484d2f3eab7797eb6a1c5263b43cddb2322f) ([#a3a85da](https://github.com/Clubs-Council-IIITH/events/commit/a3a85da3dd610952eb7881d003e730793a1a0bab))
- Deployment setup bash file (for ease of setting up for the first time) ([#e89eed2](https://github.com/Clubs-Council-IIITH/services/commit/e89eed2ba7ca262f090c04ec6c13d85568d85e1a))
- Added github prune origin command for maintainance of the remote ([#09dde64](https://github.com/Clubs-Council-IIITH/services/commit/09dde64e37e8246077367d2839c7d7f598cc9ed1))
- Added deployment information in the README of services ([#f98e082](https://github.com/Clubs-Council-IIITH/services/commit/f98e0825b92ca65e19dbb2828b7714ec0e20ebde))
- Added gitlab pushing and setup to deploy script ([#7d30c2f](https://github.com/Clubs-Council-IIITH/services/commit/7d30c2f812b1fe5f4c74c47d7294261450e2308e))

- **Work Ongoing**:
    - Certificate Template Design.
    - Rulebooks and Policy like files uploading setup. Alongwith it, improving the files service.
    - Event Reports starting from the backend.

    
### SLC Tech Website
(https://github.com/Clubs-Council-IIITH/slc-tech)

- Integrated the logo
- Added a new past-members section
- Added a timeline info for each member
- Added a new projects page templated from blogs page

---

### Portals Site
Handled Portal's remaining responsiveness along with some dark mode bugs (portals page got deployed too) : There were few things remaining in portal's page, the grid and sections were not in sync and also were unresponsive to various device widths... Handled it and the page is deployed now. (https://github.com/Clubs-Council-IIITH/portals/commits/master/)

### CAS Redesign

- Handled responsiveness for CAS login page: Handled the responsiveness of login page of CAS.
- Integrated username/email autofill in the newly designed login page.
- Efforts to integrate the design completely with the CAS structure. (Integration in progress, and 95% done)

### Miscellaneous
- Some help to JP sir regarding users in docs.iiit.ac.in.

### Alumni Site Updates
- Made minor updates to the alumni site (changes the link, adding an extra payment option, some responsiveness things) - Email with subject "Need changes to Giving webpage".

### Research website
- Worked on an update in the research website, related to PDF links - Email with subject "Research website".

----

We also did recruitment for UG1 students for the SLC Tech Team. We have selected 3 students and are guiding them in setting up the codebase. These students will be working in the team for a temporary period of 2 months, after which they will be evaluated for a permanent position in the team. The selection procedure included an online detailed form with past experiences, projects, skills, etc, then list of tasks and an interview, and then final second round of interview.

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [Research Website](https://research.iiit.ac.in)
- [Portals Website](https://portals.iiit.ac.in)
- [Alumni Giving Page](https://alumnifund.iiit.ac.in/giving)
