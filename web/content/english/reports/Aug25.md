---
title: "Monthly Progress report - August 2025"
meta_title: ""
description: ""
date: 2026-05-13T08:30:00Z
image: "/images/blogs/august.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Clubs Council Website

- **Completion of Async migration:** Migrated the subgraphs to the
  recently introduced mongo 4.0+’s native async features for adaptation
  to higher traffic and faster working of the clubs website.
  ([Clubs](https://github.com/Clubs-Council-IIITH/clubs/pull/28),
  [Members](https://github.com/Clubs-Council-IIITH/members/pull/19),
  [Users](https://github.com/Clubs-Council-IIITH/users/pull/25),
  [Interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/25),
  [Events](https://github.com/Clubs-Council-IIITH/events/pull/73))

- **Add Other option in Alternate location:** Added conditional text
  input fields for 'Other' selections in Location and Alternate Location
  dropdowns to capture custom user-defined entries. Here if user writes
  any custom location name which is not available in the list of
  Locations, the location will be stored as is and displayed in
  event-reports, events etc. Limitation: If two custom locations are
  same (in two different events), we can't check for collisions.
  ([Events](https://github.com/Clubs-Council-IIITH/events/pull/75),
  [Web](https://github.com/Clubs-Council-IIITH/web/pull/157))

- **Add new rules for event mailing:**
  ([events](https://github.com/Clubs-Council-IIITH/events/commit/754a76170334583cde71447ebdafcbc64e021588))

  - CC club POC in important event related emails
  - If SLO deletes an event, send email to club

- **Backend better packagemanagement** - In backend, upgrade all
  packages to latest. Manually add minimum required packages to
  `requirements.txt` instead of using `pip freeze`.
  ([events](https://github.com/Clubs-Council-IIITH/events/pull/76),
  [members](https://github.com/Clubs-Council-IIITH/members/pull/20),
  [clubs](https://github.com/Clubs-Council-IIITH/clubs/pull/27),
  [interfaces](https://github.com/Clubs-Council-IIITH/interfaces/pull/26),
  [interfaces](https://github.com/Clubs-Council-IIITH/users/pull/26),
  [auth](https://github.com/Clubs-Council-IIITH/auth/pull/12),
  [files](https://github.com/Clubs-Council-IIITH/files/pull/16))

- Minor fixes:

  - Add color for sponsored events.
    ([web](https://github.com/Clubs-Council-IIITH/web/pull/158))
  - Pass cookies directly into Async call instead of checking inside of
    using if condition
    ([34f7d4b](https://github.com/Clubs-Council-IIITH/members/commit/34f7d4b5bb3a001f319f5815dec9b79c55fc0707))
  - Instead of displaying all tech team members, display current and
    link to rest.
    ([dffcdc3](https://github.com/Clubs-Council-IIITH/web/commit/dffcdc33b16ebbd715f26856d0fc9adfe533cd48))
  - Hide showing budget and venue information if the event doesn't
    contain one in '/manage/events/\[id\]' page
    ([55d96ce](https://github.com/Clubs-Council-IIITH/web/commit/55d96ce54679e692ffbef351dbc95614b64ab12f))
  - Minor fix in the label for alternate picker reads "Selected as
    Alternate", even when you selected the main venue
    ([6d4008a](https://github.com/Clubs-Council-IIITH/web/commit/6d4008af7764cf81ddc9c12deb82dca437fba9a5))
  - Update the docker image for nodejs from 20 to 22
    ([76c616c](https://github.com/Clubs-Council-IIITH/web/commit/76c616c22f6968b033be1cfe160a9e49b82d570d))

### Main IIIT site & Blogs site

- **Carousel Bug Fix on Home Page:** Fixed an error that occurred when adding new images to the home page carousel due to a layout mismatch. Improved the carousel’s layout to ensure proper fitting and enhanced responsiveness across different screen sizes.


### CQST Site

- Added an extra API support with new ACF field for visitors page
  (automating adding visitors)

### Portals site

- Reduced the brightness of the purple color in dark mode
- Increased brightness of help text in dark mode (like the link
  description in popular portals)
- Increased the width of the 2nd column of boxes (like Research,
  Academics, etc one)

### MyIIITH App Work

- **Frontend**

  - Implement email auto complete feature where you get a dropdown with
    "research.iiit.ac.in", "students.iiit.ac.in" and "iiit.ac.in"
  - Mess UX Improvements
    - Tapping on Upcoming Meals open the meal menu for easy access
    - Sort the meal menus so that the registered mess comes up on top
      always, else default to alphabetical order
    - Swiping down on the mess dashboard and upcoming meals now
      refreshes the page
    - Format the date under the Tomorrow's Meals to be more readable
      (for e.g. "Tuesday, 5 August 2025" instead of "Tue, Aug 5 2025")
  - Range Registration Dialog:
    - Added Range Registration Dialog, allows users to register or
      cancel meals over a date range with full API integration.
    - Implemented Cancel/Uncancel Functionality, users can toggle meal
      participation across multiple days in one action.
    - Configuration Fetching & Validation, retrieves and validates meal
      registration settings without redundant re-fetching.
    - Improved Navigation & UI, month prev/next buttons only enabled
      when applicable; fixed 1-day date offset issue.
    - Code Cleanup & Optimization, removed unused variables, improved
      formatting, and refined logic for better performance.
  - Remove deleting mess portal key when certain operations fail. Like
    returning 401 and when Network requests failed.
  - Add `await`, before updateMessPortalKey and deleteMessPortalKey
    calls.
  - Simplify the frontend deployment github action.
    [e8bf53e](https://github.com/IMS-IIITH/frontend/commit/e8bf53e1a5dec813b823620b928720065cb77056v).
    Use node cache for the github actions
    [1b110b2](https://github.com/IMS-IIITH/frontend/commit/1b110b2f7440984bd85221d2bf08a7ae03ead3ac),
    Remove the changelog generator
    [04f96dd](https://github.com/IMS-IIITH/frontend/commit/04f96dd84f964b985644ce2822eef1dd3182dd8e).

- **Backend**

  - Add induction schedule when the UG1 comes. Use the induction
    schedule proposed by Apex.
  - Return the mess name of the meal when you uncancel that meal.
  - Add caching to pip in github actions.
  - Add installation for ssl/libldap libraries to docker build.
  - Change mess registrations API to return "registered", "unregistered"
    and "extra" meals. And add explicit argument just for registered.
  - Auth Middleware:
    - Move the user authentication part to a middleware for better
      handling of routes and not missing user authentication anywhere by
      mistake
    - Don't use auth utils everywhere and prevent token decoding at
      different places - use request.states
    - Added GZip compression support
    - Use fastapi status codes for better code documentation of what
      code is for what
  - Use the naming everywhere as employee instead of faculty, when
    referring to both staff and employee as a collective.
  - Even if user is locked, let the user logout, by ignoring the auth.
    This can be useful if you are installing a old version of the app
    and you have to call emergency logout to remove the local cache.
  - Change mess names from North to Palash and south to kadamb veg.

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
