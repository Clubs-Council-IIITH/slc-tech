---
title: "Monthly Progress report - July 2026"
meta_title: ""
description: ""
date: 2026-08-05T08:30:00Z
image: "/images/blogs/july.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — July 2026

### Team Members

- Abhiram Tilak (Tech Lead)
- Evan Bijoy (Web + Design Developer)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)
- Ashwin Aravind (Web Administrator)
- Avani Mandlik (Web Administrator)

### Clubs Council Website

#### SLC and SLO Member access

- SLO can add / edit members of any club or student body
- SLO has equal access now that of Clubs Council to make changes to any members.
- This change was done so that SLO doesn't have to rely on Webadmins to manually change the SLO's members, SLC's members and SAC's members in supervisory bodies.

![slo_access](/images/reports/Jul26/slo_access.png)

**Now SLO has access to this manage page only Clubs Council had access to.**

**Pending Work** – The Supervisory Bodies should be separate managable entries just like Clubs and Student Bodies. SLO has access to make changes to any members.
**Bug Found** – Remove a club with "vamsi.krishna". Student Life Office needs its own members.

#### Achievements Page

- Add achievement page for public content, display all latest achievements by clubs
- Add manage achievements page, using which, the SLO/CC can manage achievements
- Approval stages for CC/SLO added.

![achievements1](/images/reports/Jul26/achievements1.png)

![achievements2](/images/reports/Jul26/achievements2.png)

**Pending Work** – Make changes to UI as suggested during meet with Vamsi Sir. Support email sending to SLO/CC when new achievements are added.

#### Budget Table changes

- Store budget information in the event report too. 
- Add a new column for allotted budget information along with the proposed budget.

#### Inventory Management System

- Add items table with dynamic increment/decrement functionality
- Updated new inventory items form page, to handle edit items properly
- Updated new transactions page
- Add a form for current state of the borrowed item and return state of the borrowed item.
- Make the Recents page for items and transactions with top 10

![new_items_page](/images/reports/Jul26/new_items_page.png)

![transaction_approval](/images/reports/Jul26/transaction_approval.png)

### IIIT Main Site

#### Update iiit-sectest by Dileep

- Upgraded the core server stack: WordPress 6.6.1 → 7.0.2, PHP 8.0.30 → 8.3.31, nginx upgraded, and 196 Rocky Linux security/package updates applied.
- Updated WordPress plugins: Upgraded Elementor, Elementor Pro, ACF, Essential Addons, ElementsKit, TablePress, SEO, caching, backup, and other plugins to compatible/latest versions; Elementor Pro license was also renewed.
- Replaced an incompatible plugin: Removed the old Unlimited Elements Premium plugin that was causing blank pages and HTTP 500 errors, replacing it with the maintained compatible version.
- Fixed website/server issues: Resolved affected pages, corrected nginx reverse-proxy/legacy sub-site redirects, and added a missing 50x error page.
- Security & rollback readiness: Took full website and database backups before the upgrade and identified Duplicator Pro as the remaining security item requiring vendor-side verification/update.

#### [BUG] Not able to add new posts

- Elementor Pro upgrade  temporarily the license seems to have broken.
- Because of this we were unable to add new posts.

![new_post_blogs](/images/reports/Jul26/new_post_blogs.png)
 
#### [BUG] ReadMore arrow hidden

![blogs_read_more](/images/reports/Jul26/blogs_read_more.png)

### Prepare list of managed portals by Webadmins

- Keerthana asked for a list of managed portals by Webadmins.

![list_of_manage](/images/reports/Jul26/list_of_manage.png)



