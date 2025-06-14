---
title: "Monthly Progress report - January 2025"
meta_title: ""
description: ""
date: 2025-02-05T05:30:00Z
image: "/images/blogs/january.png"
categories: ["Monthly Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks

### Clubs Council Website

- **Certificate Generation**:
  ([web](https://github.com/Clubs-Council-IIITH/web/pull/135),
  [members](https://github.com/Clubs-Council-IIITH/members/pull/13))

  - Implement the Figma template of the certificate in html,
    css.
  - Implement the code for certificate approval: Involves adding
    a request button for each user in profile page, and a new
    manage page for SLO, to approve certificates.
  - Break the theme into two parts to fit for cases where the
    number of roles are way to high (supports upto 20 now)
  - TODO: Obtain signatures from the SLC Head and other faculty
    required for the certificate. To be deployed after that.

- **Members Data Download**:
  ([web](https://github.com/Clubs-Council-IIITH/web/pull/131),
  [members](https://github.com/Clubs-Council-IIITH/members/pull/10)
  [users](https://github.com/Clubs-Council-IIITH/users/pull/17)):

  - Add a new page just like Events data download, as members
    data download.
  - Allows you to extensively select the filters and download
    CSV file for the data.
  - Add support for multiple clubs being selected at once.
  - Add a new query in the backend (users) and add code to
    handle the downloads in backend itself (members).
  - Fix the problem with roles not being filled properly.
  - Fix the header names being unreadable.
  - Finally remove filters which are not required.

- **Documentation for Python modules**:

  - Add docstrings in python for every python based repo.
  - Change some code in cases where the return types are not
    clear.
  - Add proper return types and parameter types, along with
    Optional Argument and default value information.
  - Make the styling of the docstrings compatible with Google
    python styling guide.
  - Verify the compilation using some markdown renderer.

- **API-Docs Website**
  ([api-docs](https://github.com/Clubs-Council-IIITH/api-docs)):
  - Pick a mkdocs theme and add support for dark mode.
  - Setup mkdocs for the subgraphs.
  - Setup mkdocs for the API, add CAS support since this part of
    the page is not publically accessible.
  - Make a new repo and add the code to build and deploy
    api-docs.
  - Add a DockerFile which will install mkdocs and update it,
    also write the CAS authorization code.
  - Obtain a domain `slc-docs.iiit.ac.in` and add host it
    ([Link](https://slc-docs.iiit.ac.in)).
  - Add home page and other base level documentation from the
    existing repos in new website.

- **Minor Fixes**:

  - Since there is auto logout callback in CAS now, remove the
    manual code written in our website for that.
    ([Link](https://github.com/Clubs-Council-IIITH/web/pull/134))
  - Rather than just storing isStudentBodyEvent, save if it is
    club, body or admin and change progressEvent accordingly.
    Also, directly approve admin events. (Changes already have
    been done for other subgraphs like members, now do it for
    events).
    ([Link](https://github.com/Clubs-Council-IIITH/events/pull/54)).
    Also update the setup repo with new json formats.
    ([setup]())
  - Fixed a bug that past members still coming with all clubs
    (If shifting from one club to all clubs)
    ([Link](https://github.com/Clubs-Council-IIITH/web/commit/886260acf94e1b24349c73e3251806ba0802eec8))

- **Work Ongoing**:

  - Add email to club, to remind them to submit event report as
    soon as event is done.
  - Add a reminder button for SLO, for any pending events, and
    add a clickable button for CC.
  - Deployment of SLC-Tech website.

### Student Body Websites

Remove studentBody variable based on CC backend refactoring to make compatible with the new changes.

---

### IT Services Page

- Make the home page design for IT services.
- Come up with a navigation scheme and top links.
- Make a footer and header for the page.
- Have meeting with Ma'am and get reviews and requirements.
- Obtain feedback and change the existing implementations and
  start working on new pages.

### CAS Redesign

- Try to debug the Microsoft outlook app problem where the page
  doesn't load at the center and also doesn't contain scrollbars.
- Change the logic for greying out the login button when password
  not true (was giving some issues). i- Changed Dark theme of CAS:
  Since many people were disliking the previous dark theme. Hence
  changed it on public opinion
- Implemented Theme switch: Many people, who had dark as system
  preference, they weren't willing to choose dark theme of CAS
  automatically. Hence the switch will help them change theme
  manually and remember their preferences.
- Fixed logout theme changing issue: Whenever users were logging
  out then the theme was getting reset. Fixed that issue
- Deployment of CAS: Handled issues which came after deployment in
  CAS

### Research website

- Designed the students Lab page, obtain reviews about the page.

### Admissions page upgrade

- Migrate the wordpress for pgadmissions and ugadmissions page
  (done by sysadmins) from old server to newer.
- Port the Pgadmissions and Ugadmissions pages from old wordpress
  version to new.

### Improve the security of Blogs page

- Run a filter on the spam comments and quarantine them.
- Find out the reason for spam and setup basic filter for it.
- Upgrade the wordpress version of the page, and update all the
  plugins
- Look for better plugin alternatives and setup region wise
  blockers.

---

## Important Links:

- [Clubs Council Website](https://clubs.iiit.ac.in)
- [Life Website](https://life.iiit.ac.in)
- [Changelog](https://clubs.iiit.ac.in/changelog)
- [Github Repository](https://github.com/Clubs-Council-IIITH/)
- [Research Website](https://research.iiit.ac.in)
- [Portals Website](https://portals.iiit.ac.in)
- [New CAS Design](https://login-new.iiit.ac.in)
