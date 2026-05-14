---
title: "Monthly Progress report - September 2025"
meta_title: ""
description: ""
date: 2026-05-13T09:30:00Z
image: "/images/blogs/september.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

## List of Tasks

### Clubs Council Website

- **4 months filter in manage events table**: Currently manage events page for clubs, CC or SLO fetches all events, which will grow exponentially over time making it slower and load on backend or network. Added a button which by defaults fetches last 4 month events and if needed, user can fetch all events still. Reduces default load on system. PRs: [web](https://github.com/Clubs-Council-IIITH/web/pull/161), [events](https://github.com/Clubs-Council-IIITH/events/pull/81)

- **Fix bug individual member role issue** - After migration into async
  motor, the get_member_roles query was not working properly, it was
  only querying roles of the member from the first club, not other
  clubs. To fix this we had a add another layer of for loop and gather
  roles across all clubs.
  ([Members](https://github.com/Clubs-Council-IIITH/members/pull/21))

- **Add sponsor table to event report page** - Add the sponsor table to
  more pages where it was added like event report pdf, docx and event
  report page.
  ([web](https://github.com/Clubs-Council-IIITH/web/pull/158),
  [events](https://github.com/Clubs-Council-IIITH/events/pull/82))

- **Replace Sponsor Website with comment** - Currently there is a field
  in the sponsor table named website, but we can use that field for
  comment instead because the comment is a custom field where the club
  can write additional info, like the money breakdown. Website will be
  evident for most known sponsors, so not required.
  ([web](https://github.com/Clubs-Council-IIITH/web/pull/160),
  [events](https://github.com/Clubs-Council-IIITH/events/pull/78))

- **Add SIG support for temporary clubs** - Modify profile handling
  logic to better accommodate student emails that are added as clubs,
  forming the basis for SIG (Special Interest Group) addition to the
  website. The changes distinguish between different user types and
  handle profile display and editing permissions accordingly. Removes
  club-specific conditional rendering in user details display Updates
  profile page logic to handle student email patterns and
  membership-based navigation Modifies edit profile permissions to allow
  student email users to access editing
  ([Web](https://github.com/Clubs-Council-IIITH/web/pull/162))

- Minor fixes:

  - Restrict string lengths, using strawberry special types -
    ([df629e4](https://github.com/Clubs-Council-IIITH/events/commit/df629e45d56fdab11d6aa76c67fb6211b267e25f#diff-b9e4f016709e886f69061b5fbd63b79fb451b39dae20e4f9722eb1e4c92bf57eR26-R358))
  - Fix: Make otherLocations backwards compatible with older events
    which do not contain them
    ([3e7d48f](https://github.com/Clubs-Council-IIITH/events/commit/3e7d48fd997a1e3417ff194f0cfdacb5939e15cd))
  - Fix: For edit EventForm, add updatable? variable to see check if the
    field is updatable or not.
    ([aa33a48](https://github.com/Clubs-Council-IIITH/events/commit/aa33a48c07623add10bdd8c463ab6c6b6988ae57))
  - Remove remind SLO button in the frontend
    [afd0b50](https://github.com/Clubs-Council-IIITH/web/commit/afd0b50bc3f65ce5655b2d99ea0c70e5bac60a72)
  - (Fix) In collaborated events multi-club selector has a Done button
    which adds an empty club, fix that by using a close button on top
    instead
    [3110706](https://github.com/Clubs-Council-IIITH/web/commit/3110706c04d26f03cc2c68c50e9d6103f09f8769)
  - Remove requirement for sponsor value being greater than 0 (allow
    zero also). This is for events where sponsor is a percentage of
    profits not amount.
    [231c402](https://github.com/Clubs-Council-IIITH/web/commit/231c402f19638c143f24dc8ae23c0c1aba77b3a1)
  - Add edit event button for approved events also (SLO Only)
    [dbbc4a9](https://github.com/Clubs-Council-IIITH/web/commit/dbbc4a96eeb1ee8d82149c22b8a510c56bff6f25)

### Main IIIT site & Blogs site

- **Event Date issue in iiit website:** In the events section in the
  home page of the iiit website, we have date being mentioned in each
  event card. This event is wrong and the data is that of when the card
  was made. The fix was to manually add the event's date.

- **Fix the styling for Events section in website**: The main image
  poster in the event section was blurred too much, fixed that. Improve
  the styling for Date fields.

- **Development Setup for Main Site**: Created a dedicated development environment for the main site, allowing developers to safely test major changes, experiment with new features, and implement enhancements without affecting the live version.

### CQST Site

- Added a page for visitors and speakers which can be filled manually
  <https://cqst.iiit.ac.in/visitors/>
- Updated the import plugin to handle the new API format

### Courier Portal

- Setup the courier portal for final deployment.
- Data import from old mysql tables from existing courier portal.
- Add old data to atlas and add new fields to support backwards
  compatibility.
- Talk with ithead about final deployment and discuss the process.

### IT-Services work

- Implementation of IT Servers page according to suggested changes in
  categories. Also changed page design to make page population task
  easier.
- IT Services Page setup to the new domain provided.
- Documented instructions to populate page with steps to add new data
  and details

### JP sir's work

- **ihub data's users:** Sir asked me to make a script for i-hub data
  and make a csv with posix attribute given the csv file. Later also
  made me add home directory and other information

### Micellaneous

- **New base machine setup:**
  - Update the proxmox version so that we can support latest ubuntu
    24.04 containers.
  - Add a new virtual network `vmbr1`, which will map the 192.168.1.\*
    addresses instead of 10.\* ones because they lead to conficts
  - Decide on the server configuration and setup templates for each OS,
    alpine, ubuntu, rockylinux
    - Updating the hostname for the base-machine. Earlier Hafiz sir did it, but it didn't work and broke the system. Reverted that and did from scratch again from our side.
- **CAS Redirection Issue**: Reported that CAS currently redirects to any http or https site (even non-IIIT domains). Fixed that on login-test2. The changes were later migrated to production as well successfully.

### Work Ongoing

- Members query simplification, use aggregates instead of complex if
  else conditions written in python, so that we don't fetch more and
  filter later, instead fetch less from mongo itself.

- Members manage page for bulk addition and deletion. This is useful
  because after recruitment clubs change things at once.

- upgrading nextjs from 14 to 16, also other frontend packages.

### MyIIIT App work

- **Faculty**

  - Globalize Styles:
    - The project introduced a global styling system that standardized
      the overall look and feel across all components and screens.
    - A dark and light mode switch was added, with improvements to theme
      colors and icon appearance to ensure better contrast and
      usability.
    - Several UI components were unified under a common styling
      approach, including buttons, badges, inputs, and error pages, to
      maintain design consistency.
    - The codebase was refactored to move inline styles into dedicated
      style files, improving readability and maintainability of the
      code.
    - ESLint configurations were updated and enforced throughout the
      project, along with the addition of the simple-import-sort plugin
      to maintain import order.
    - A pre-commit hook was implemented to automatically lint and fix
      JavaScript and TypeScript files before committing, ensuring a
      cleaner codebase.
    - The authentication and logout logic was improved to properly clear
      cookies and local storage in all logout scenarios.
    - The mess registration and dashboard screens were enhanced to
      handle unregistered meals, duplicate entries, and cancellation
      limits more effectively.
    - The calendar component was refactored and optimized to fix
      re-rendering and navigation issues, and it was moved outside of
      the mess folder for reusability.
    - Several minor UI fixes were applied across different screens,
      including bottom bar alignment, padding adjustments, and error
      message visibility improvements.
    - The dark mode text colors were fine-tuned to achieve better
      readability, and experimental dark mode was set to be off by
      default.
    - Network error handling was improved with retry buttons, and
      unnecessary clearing of local storage on network failures was
      removed.
    - Dependencies were updated, including Gradle, Android NDK, and
      other build configurations to ensure compatibility with newer
      versions.
    - The project removed unused dependencies such as Jest and optimized
      build scripts for local and emulator testing environments.
    - Multiple visual refinements were made, including updated shadows,
      navbar colors, sidebar styling, and icon adjustments to improve
      the overall user interface.
  - Unless bundling the app conditionally check whether to build aab.
  - Change the PDF Viewer package:
    - Replaced PDF viewer component with new library that requires local
      file paths
    - Modified navigation parameters to support distance between pages
      instead of restricted access
    - Updated download function to support temporary file creation and
      cleanup
  - Add code ownership file
    [13c5140](https://github.com/IMS-IIITH/frontend/commit/13c5140e3693c644e464aabb5a3593227eb6d6e8)
  - Github workflow remove warning mode but add it in local build
    script.
  - Add IOS Support for the android app:
    - An iOS project folder was added along with detailed setup
      instructions in the README file to help configure the iOS
      environment.
    - App icons and general icon support were added for the iOS version,
      and some API fetch requests were updated to omit credentials where
      unnecessary.
    - The main branch was merged into the iOS support branch to ensure
      compatibility and include recent updates such as PDF handling.
    - Required iOS permissions were added, including camera and file
      read permissions, to enable necessary native features.
    - The cookie manager was updated to include secure and expiry keys
      for persistent storage on iOS, extending cookie expiry to 20 days.
    - The credentials omit logic was applied to multiple API endpoints,
      including Assignments and Faculty Contacts, to improve security
      and consistency.
    - The date and time picker library was fixed for proper functioning
      on iOS devices.
    - A document download feature was added for iOS users, allowing
      files to be saved directly from the app.
    - The About page was updated to include iOS-related information,
      improving documentation and platform awareness.
    - Several UI fixes were made, including capitalization corrections
      on the login page and curriculum page, and ensuring "IIIT" is
      displayed in uppercase.
    - Input field layout issues were resolved by fixing vertical spacing
      in card text inputs and replacing flexBasis usage for better iOS
      compatibility.
    - Shadows and visual effects were implemented for iOS, enhancing the
      visual depth and consistency of the interface.
    - Faculty-specific settings were enabled, expanding accessibility to
      configuration options for faculty members.
    - The cookie management function was renamed for clarity and
      consistency within the codebase.
    - Multiple small fixes were made, including resolving visibility
      issues in contact details, improving toggle track visibility,
      handling maximum guest counts in mess registrations, and fixing
      name overflow in ID cards.
  - Package Upgrades
    - Upgraded React Native to 0.81.1.
    - Latest version of rn is 0.82, but that removed support for old
      architecture, so this is the last we can go upto.
    - Same for react-native-reanimated, which removed support for old
      arch in v4.x, thus update to latest v3.x.
  - Change the coloring such a way that the subcontainer is different
    color than `colors.background2`. This is because in dark mode, the
    subcontainer blends with the background in some pages.
  - For Selector component use defaultSelection instead of placeholder
    for default values. Similarly fix the multi selector component to
    show the selected entries in the dropdown (not working initially)
  - Small fix in mess registration screens because, it says unregistered
    even when the meal is availed.
  - Add gradle graph dependency worflow: This workflow enables GitHub’s
    Dependency Graph feature for your Gradle-based project. It helps
    GitHub track which dependencies your project uses so that it can
    inform when goes out of date.
  - Remove clearing when user is not authenticated. This is because when
    logout + login is handled, all the AsyncStorage is wiped.
  - Add build scannnig for deployment.
  - Fix the width of the courseNames in the Attendance. Earlier the text
    was overflowing and getting hidden when more than 3 lines.
  - Fix most obvious typescript errors (First pr):
    1.  **@typescript-eslint/no-explicit-any**
        - Replaced loosely typed parameters (like `a, b`) with specific
          interfaces such as `FormattedAssignment` in sorting functions.
    2.  **@typescript-eslint/no-unsafe-member-access**
        - Added proper type narrowing (`key as keyof typeof results`)
          when accessing dynamic object keys in permission checks.
    3.  **@typescript-eslint/consistent-type-assertions**
        - Added `as FontAwesome6IconName` casts when passing icon names
          to ensure type-safe usage of
          `@react-native-vector-icons/fontawesome6`.
    4.  **@typescript-eslint/explicit-module-boundary-types**
        - Defined or improved return types for functions such as
          `filterEmptySemester`, navigation handlers, and component
          functions.
    5.  **@typescript-eslint/no-unnecessary-type-assertion**
        - Removed redundant or duplicate type declarations (like
          removing duplicated `name: string`).
    6.  **react/jsx-no-undef**
        - Fixed missing imports for types such as
          `FontAwesome6IconName`, ensuring JSX components use properly
          imported symbols.
    7.  **@typescript-eslint/no-unused-vars**
        - Cleaned up unused imports and local variables after tightening
          type definitions.
    8.  **@typescript-eslint/ban-types**
        - Replaced generic `React.ComponentType<object>` with stricter
          unions
          (`React.ComponentType<DashboardScreenProps> | React.ComponentType<AboutProps>`).
    9.  **@typescript-eslint/strict-boolean-expressions**
        - Ensured checks like permission results and navigation
          parameters are properly typed as boolean-safe.
    10. **@typescript-eslint/no-floating-promises**
        - Fixed unawaited async calls or ensured proper handling of
          async permissions and navigations.
    11. **react/no-unstable-nested-components**
        - Moved inline component type definitions or declarations
          outside functional components.
    12. **@typescript-eslint/no-loss-of-precision**
        - Added explicit type annotations (for example, typed tuples and
          number parsing fixes in Attendance screens).
    13. **@typescript-eslint/prefer-as-const**
        - Used `as` assertions instead of string literals to enforce
          known enum-like values (`"DashboardScreen" as never` in
          navigation).
    14. **@typescript-eslint/no-misused-promises**
        - Corrected navigation and async callback typings where promises
          were incorrectly passed to event handlers.
    15. **@typescript-eslint/array-type**
        - Declared arrays using consistent types (`string[]` instead of
          `Array<string>` and typed object arrays in selectors).
  - Structured imports:
    - Converts all relative imports to path aliases using @ prefix
    - Updates build tooling (babel, eslint) to support the new alias
      structure
    - Reorganizes exports in some constants files

- **Backend**

  - Update ldap to ldaps.
  - Package upgrades - Update the packages in the backend, minimize the
    number of packages specified in `requirements.txt` instead of output
    from `pip freeze`.
  - Allow `/static/images` from going through images without
    authorization.
  - Add a privacy policy page at
    <https://ims-app.iiit.ac.in/privacy-policy>

- **Ongoing**

  - Staff Leave Request page
  - Faculty Courses page
  - Implement Refresh control for required components
  - Second PR for fixing more typescript errors

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
