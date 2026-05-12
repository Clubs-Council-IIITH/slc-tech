---
title: "Monthly Progress report - November 2025"
meta_title: ""
description: ""
date: 2025-03-14T05:30:00Z
image: "/images/blogs/november.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Clubs Council Website

- _Caching of clubs queries_: In memory caching along with handling of race conditions using read-write locks helps in making the backend queries run much faster and not contact db each time. A performance improvements of around 25% was benchmarked with this change (Benchmark results are given at the end of this report). Reference: [clubs PR](https://github.com/Clubs-Council-IIITH/clubs/pull/31)

- _Remove extra activeClubs query_ and merge it into the allClubs query itself. This helps in code repetition and better structuring. References: [web](https://github.com/Clubs-Council-IIITH/web/pull/169), [clubs](https://github.com/Clubs-Council-IIITH/clubs/pull/30)

- _Documentation Fixes_ (Continued from last month): Documentation fixes for linking object types and other types for better documentation at slc-docs.iiit.ac.in. Added inventory files for pymongo and custom-made strawberry inventory file (strawberry-graphql package documentation does not expose any objects.inv file by default). References: [files](https://github.com/Clubs-Council-IIITH/files/commit/8bea11d3504a7533dcee1ad2529d33134d55cca9), [users](https://github.com/Clubs-Council-IIITH/users/pull/27), [clubs](https://github.com/Clubs-Council-IIITH/clubs/pull/29), [members](https://github.com/Clubs-Council-IIITH/members/pull/23), [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/27) and [events](https://github.com/Clubs-Council-IIITH/events/commit/1951d7b68cb49b92ff9f318c7d06fe26e6ca6499)

- _Removing pytz and using inbuilt timezone library_: We were earlier using pytz library for timezone specific datetimes, but we have removed it (in favour of minimum libraries for better maintainance) and have shifted to use inbuilt timezone of python. References: [files](https://github.com/Clubs-Council-IIITH/files/commit/6f7a53e52ed126d5b6b3ea60cbb8909b159efa44), [users](https://github.com/Clubs-Council-IIITH/users/commit/ab802c10931f80c830a285c5d321161fddd37000), [clubs](https://github.com/Clubs-Council-IIITH/clubs/commit/9671ec23c190cb2115e2dda6dfef0363c6638284), [members](https://github.com/Clubs-Council-IIITH/members/commit/cf86058b04528475d24d44c5d6b8e5c77ca9f3b1), [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/commit/9a825999fd959f64b22b902cbc3fccf8bd4fa82a), [auth](https://github.com/Clubs-Council-IIITH/auth/commit/1abaae7c10c7d572ac97f93ec2b4bfc3098bf285), [auth-dev](https://github.com/Clubs-Council-IIITH/auth-dev/commit/81c02ee2689a6f67fae2913338c441138f29d748), [events](https://github.com/Clubs-Council-IIITH/events/commit/5e4138a5d92b04a1deb06747d35454b35de88bae), [api-docs](https://github.com/Clubs-Council-IIITH/api-docs/commit/0582501d76d3be12b088318469b5ca226aae5c7f)

- _Removed extra `python-dateutil` and `datetime` libraries_: These libraries were not as maintained as python's internal library. References: [users](https://github.com/Clubs-Council-IIITH/users/commit/045833c38270c161c7ea8f09d80592de7bd0c03a), [clubs](https://github.com/Clubs-Council-IIITH/clubs/commit/159c6027e2dd9fdac43789a0777313748309e7d6), [users](https://github.com/Clubs-Council-IIITH/users/commit/045833c38270c161c7ea8f09d80592de7bd0c03a), [api-docs](https://github.com/Clubs-Council-IIITH/api-docs/commit/fc01b3213c09bed3eb32eb7377fa222dd41f5ee6)

- _Added Proxyfix to Authentication API Flask Service_: The ProxyFix middleware is used to help Flask applications work correctly behind reverse proxies (like Nginx, Apache, or load balancers). `x_proto=1`: Trust 1 proxy for the protocol (HTTP/HTTPS). This ensures `request.scheme` and `url_for()` generate correct URLs. `x_host=1`: Trust 1 proxy for the host header. This ensures `request.host` shows the correct domain. This overall helps to get the exact hostname as well as generate https based authentication links. Reference: [auth](https://github.com/Clubs-Council-IIITH/auth/commit/b8cc98f6be9378c8bbc5d4c7e95ca5cccb7fa1ca)

- _Using variable tags for build images_: Currently we always used the latest tags for all submodule and service images in production docker compose file. But this had issues when we want to revert back to some other commit in that submodule and will either need to force push or create a new image altogether. This change makes sure not to rebuild images and use the exact image at which the production services git-submodules are there. References: [services](https://github.com/Clubs-Council-IIITH/services/pull/98), [hooks](https://github.com/Clubs-Council-IIITH/hooks/pull/1) 

- _Memoize data requests in frontend_: Currently to generate the metadata and then the body of a page, two separate requests are sent. Using React's cache method, we have memoized those requests into single backend call (rather than 2 per page per page request). This helps to reduce load on backend and improve performance. Reference: [web](https://github.com/Clubs-Council-IIITH/web/pull/168), [Nextjs Documentation](https://nextjs.org/docs/app/getting-started/metadata-and-og-images#memoizing-data-requests)

- Add bulk addition & editing support for manage members for clubs. Reference: [web](https://github.com/Clubs-Council-IIITH/web/pull/165)

- Minor fixes:
    - Small type and list fixes in member subgraph. References: [1](https://github.com/Clubs-Council-IIITH/members/commit/ada30a1dd5469f33830cf932f32964f4a59e4430), [2](https://github.com/Clubs-Council-IIITH/members/commit/b5c0e3a255052a0f54ca98c63ee876e6a5b8e3a1)
    - Add day in the event start and end time for mailing. Reference: [events](https://github.com/Clubs-Council-IIITH/events/commit/547988e6e0f4125ad9f080787b36ec5f0b878fb7)
    - Add collab club names in download events data. Reference: [events](https://github.com/Clubs-Council-IIITH/events/commit/5eb7029628768509b47fe281e43e7e00f344b594)
    - Adds event report submitted field for approved events in event data download. Reference: [web](https://github.com/Clubs-Council-IIITH/web/commit/7da7ca88899a30691d33be65f5ab973ac7eb01e6)
    - Fix subgraph references in documentation for events and mailing. Reference: [api-docs](https://github.com/Clubs-Council-IIITH/api-docs/commit/861e4dd2051f4539760cd459b82a46efa7fe97c8)
    - Flask, CAS and werkzeug inventory files for documentation type auto-linking/referencing. Referenence: [1](https://github.com/Clubs-Council-IIITH/api-docs/commit/0017aa0a0c23ba793ba18ff87e56828192969a10), [2](https://github.com/Clubs-Council-IIITH/api-docs/commit/2440842f56842e945eda4916461efbb13511817a), [3](https://github.com/Clubs-Council-IIITH/api-docs/commit/28b41a4c818d2f9270bbf01386abf31ec09747ec)

- Ongoing:
    - Upgrade NextJS and Packages. Reference: [web](https://github.com/Clubs-Council-IIITH/web/pull/167). Current status: testing going on along with fixes for any breaking issues. _~50 commits with ~14k lines of changes as of November end_.

### Infrastructure-related

- Re-setup of git on the clubs server for auto builds using git post-hooks.
- Confirmation that dell18 base machine doesn't require extra SSD for RAID and has hardware level RAID setup.
- Dell18 server docs. [Link](https://docs.iiit.ac.in/help-wiki/server/base-machines/dell-18)
- Nginx better headers on ims-app server (hiding server info, handling buffer overflow attacks, X-Frame-Options, X-Content-Type-Options, Referrer-Policy). SSL result links are attached at the end of this report, with all of our servers getting max possible A+ grades.
- For CC website and portals pages, hide the server info like nginx version, etc in headers (making it unknown to the attackers). Else, anyone can know what version we are using and then attack accordingly.
- Removed TLS 1 (outdated) support from all servers which make them more secure and less vulnerable to attacks

### Portals

- Package Updates (from nextjs v15 to v16). [Reference 1](https://github.com/Clubs-Council-IIITH/portals/commit/d90404009b15e600c34cd099a03ab9399fcdeb91), [Reference 2](https://github.com/Clubs-Council-IIITH/portals/commit/dd2ab43f832cc0bbb3e9069c295bb8e30c67d53e)
- Added Apple Store Link. [Reference](https://github.com/Clubs-Council-IIITH/portals/commit/f59e9062294574e201900f1e825e5a7419301eb7)
- Updated UI, especially dark mode. [Reference](https://github.com/Clubs-Council-IIITH/portals/pull/6)
- Fix Internal network checker URL (otherwise it was always detecting you are on non-IIIT network). [Reference](https://github.com/Clubs-Council-IIITH/portals/commit/a90ee0573532ce6b979c03dea7efd639f8cbd1c6)
- Seminar portal now requires VPN (it is removed from external network). [Reference](https://github.com/Clubs-Council-IIITH/portals/commit/1c5af4d0bf3b562955c78c9046dc15941a2b54af)

### CAS/Login Page

- Optimised the CAS page by reducing the network load/amount of resources transferred from 2.6 MB to 440 kB, a 5-6x reduction in resources and similar increment in page speed (by around 50%).
- Custom font files rather than material font files. Updated the main IIIT text font to "Future PT Demi" after lots of changes which looks the best and is recommended for professional logos and usecases.
- Fixed Password expired error page along with few other error pages to behave well in dark and light modes
- Fixed alumni ID autocomplete not working (due to clashing alumni.iiit and alumni.outreach.iiit email IDs). Fixed it to autocomplete to the nearest result as is done in most other applications.
- Fixed CAS responsiveness for tablet and medium sized devices
- CAS blocking by email domains per service level. [Corresponding List](https://docs.iiit.ac.in/en/help-wiki/server/cas-services-list)

### Main IIIT Site

- Removed (trashed) dummy text posts; testing and old backup pages created by Consultant IIIT
- Added new reports and certificate in NAAC page
- Created a history page for the IIIT main site
- Updated rankings page with 2025 stats and also changed the whole ranking tablepress content for better visualization
- Added Flexible learning menu in the academics menu as submenu
- Adjusted the layout in the gallery page to load the content faster and consistent
- Change to Kavita mam's profile's research center and reseach area text

### Lab Sites
- Made custom elements for the CDiTH website and completed the site
- Fixed CQST events plugin

### Miscellaneous

- Changed the nextcloud from enterprise to community edition and renewed the onlyoffice (JP sir)
- Migration of library site from old container to the new container with full new setup.
- Alumni Awards page changes as asked by the Alumni Cell (responsiveness of pages, nomination for 2026, disabling nomination form button, etc). Reference: [alumni-awards-repo](https://github.com/Clubs-Council-IIITH/alumni-awards/commits/master/)
- New Password Reset Page (Ongoing). [Link](https://passwordreset-new.iiit.ac.in/). Awaiting LDAP admin password checking and 802.1x password changes to proceed with final checks and deployment.

### My IIIT App
- **IOS**:
    - iOS release changes and release by the Director

- **Frontend**
    - Portals page fixes for UI and internal network checking
    - Fixed Dashboard Pillbar
    - Showing of min required version on welcome screen if invalid version
    - Added a logo to mess QR code to make it more authentic
    - Disable gestures on screens for iOS (as ios doesn't follow the backhandler correctly)
    - Handle 304 (already logged in) error on login page
    - Better datetime handling across the app and refactoring of caching components. [Reference](https://github.com/IMS-IIITH/frontend/pull/276)
    - New Staff and Faculty Features (Staff Leave Balance, Staff Attendance, Faculty Students, Faculty Course, Faculty Timetable, Employee Mess Bill)
    - Fixed meal timings difference on Mess dashboard page, menu page and the QR page.
    - Package security fixes
    - Opt-in Strict TypeScript API (https://reactnative.dev/blog/2025/06/12/moving-towards-a-stable-javascript-api)
    - Package updates and remove unmaintained packages. [Reference](https://github.com/IMS-IIITH/frontend/pull/290)
    - Staff Attendance and Leave Data fixes. [Reference](https://github.com/IMS-IIITH/frontend/pull/292)
    - Fix Greetings issue on dashboard pullbar changes and change to time based random consistent greeting
    - Refactor components to use theme colors for improved styling consistency

- **Backend**
    - Secure cookie in prod and set expiration
    - Return MIN version with the validate version for unsuccessful validations
    - Updated packages
    - Block all webcrawlers
    - Restructure mess router for more logical API sequence
    - Mess Ratings and Feedback APIs
    - User role checking and changes based on IMS API changes (#38)
    - Add LDAP_SERVER_DOWN_CODE and handle LDAP server down scenario in authentication
    - Staff & Faculty Feature APIs (#37)
    - Home page auto update latest release
    - Remove pytz and replace with inbuilt zoneinfo
    - Change from docker network to docker ports based setup (Docker Hardening)

- **Ongoing**
    - Implementing reminders and notifications (for things like mess, timetable, assignments, etc)
    - Looking into feasibility of implementing offline support for things like mess QR or timetable.
    - Move to more secure keychain token storage rather than cookie storage.
    - Updating mess selector page to make it better
    - Adding meal feedback support to the app
    - Looking into fabric (new arch) support for android

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [API Docs](https://slc-docs.iiit.ac.in)
- [SLC-Tech Website](https://slc-tech.iiit.ac.in)
- [Main IIIT Website](https://iiit.ac.in)
- [Main IIIT Website Changelog](https://iiithydstudents-my.sharepoint.com/:x:/g/personal/webadmin_students_iiit_ac_in/IQAcoHRcIsGURYVtUF5oVVWDARn4RuQK9H2U0xaQ3ZAa0K8)
- [IT Services Website](https://slc-tech.iiit.ac.in/itservices)
- [My IIIT App Codebase](https://gitlab.iiit.ac.in/instituteapps)
- [Dell 18 Server Docs](https://docs.iiit.ac.in/help-wiki/server/base-machines/dell-18)

----

==========================================

### _Appendix A_. Benchmark results for improved clubs query

These results are only for the allClubs query. Similar performance imporvements were seen in the singular club fetching query as well.

Testing 1000 async requests per endpoint for allClubs query


Benchmarking: https://clubs.iiit.ac.in/graphql (without caching)\
Running 1000 requests...\
Progress: 1000/1000

**Results**:
- Average: 1524.76ms
- Median: 1675ms
- Min: 274ms
- Max: 2140ms
- P95: 2049ms
- P99: 2090ms
- Success: 1000
- Failed: 0

Benchmarking: https://dev-clubs.iiit.ac.in/graphql (with caching)\
Running 1000 requests...\
Progress: 1000/1000

**Results**:
- Average: 1154.99ms
- Median: 1218ms
- Min: 263ms
- Max: 1723ms
- P95: 1409ms
- P99: 1519ms
- Success: 1000
- Failed: 0

==========================================

### _Appendix B_. SSL Checker Report Links

- [ims-app report](https://www.ssllabs.com/ssltest/analyze.html?d=ims-app.iiit.ac.in
) (A+ grade)
- [clubs report](https://www.ssllabs.com/ssltest/analyze.html?d=clubs.iiit.ac.in
) (A+ grade)
- [portals report](https://www.ssllabs.com/ssltest/analyze.html?d=portals.iiit.ac.in
) (A+ grade)
- [iiit site report](https://www.ssllabs.com/ssltest/analyze.html?d=www.iiit.ac.in
) (A grade)
- [CDN report](https://www.ssllabs.com/ssltest/analyze.html?d=cdn.iiit.ac.in
) (B grade)
- [lists report](https://www.ssllabs.com/ssltest/analyze.html?d=ims-app.iiit.ac.in
) (A- grade)

==========================================
