---
title: "Monthly Progress report - June 2026"
meta_title: ""
description: ""
date: 2026-07-14T08:30:00Z
image: "/images/blogs/june.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — June 2026

### Team Members

- Abhiram Tilak (Tech Lead)
- Evan Bijoy (Web + Design Administrator)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)
- Ashwin Aravind (Web Administrator)
- Avani Mandlik (Web Administrator)

### Clubs Council Website

- **Inventory Management System:** 
  - Add individual item page: ![individual_inventory_item](/images/reports/Jun26/inventory_item.png).
  - Manage transactions page: ![manage_transactions](/images/reports/Jun26/manage_transaction.png)
  - Make a new request page ![new_transaction](/images/reports/Jun26/new_transactions.png)

- **Minor Fixes:**
  - SLO Members Edit Access: SLO now has access to edit their own members and change descriptions
  - Upgrade all packages in subgraphs ![upgrade_packages](/images/reports/Jun26/upgrade_packages.png)
  - [Ongoing] Implement hot reload for python subgraphs so that any change will reload the image.

### OSDG Server Migration

- Make a container for setting up the new server
- Did SSH configuration for it.
- Assigned static test IP Address, and coordinate with osdg to migrate

![Help ticket for OSDG migration](/images/reports/Jun26/osdg_migration.png)

### Seminar Website

- Updated old code from python 2 to python 3.10
- Set up the new server for web2py
- Did SSH configuration
- Did Nginx configuration
- Did SSL configuration
- Hosted the new portal

### IIIT Main Site

- Change the sidebar styles for the header. https://dev.iiit.ac.in/events-on-campus/
  - Before: ![Sidebar](/images/reports/Jun26/before_sidebar.png)
  - After: ![New Sidebar](/images/reports/Jun26/new_sidebar.png)

- Add categories to Achievements and Awards page. https://dev.iiit.ac.in/achievements/ ![Awards and Achievements](/images/reports/Jun26/achievements.png)

- Container sizes are in https://dev.iiit.ac.in/course-syllabus-designs/
  - Before: ![Old Container Styles](/images/reports/Jun26/before_containers.png) 
  - After: ![New Container Styles](/images/reports/Jun26/new_containers.png)

#### Ongoing work

- Seminar page rewrite?
- Trying to update production iiit main site with latest plugins
- Inventory management, transactions feature.
- Achievements page, implementation.