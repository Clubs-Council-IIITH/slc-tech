---
title: "Monthly Progress report - August 2026"
meta_title: ""
description: ""
date: 2026-09-05T09:30:00Z
image: "/images/blogs/august.png"
categories: ["Monthly Report"]
author: "Abhiram Tilak"
draft: false
---

# Institute Web Administrator and SLC Web & System Administrator Team

## Report — August 2026

### Team Members

- Abhiram Tilak (Tech Lead)
- Evan Bijoy (Web + Design Developer)
- Ojas Kataria (System Administrator)
- Rithik Reddy Palla (Web Administrator)
- Ashwin Aravind (Web Administrator)
- Avani Mandlik (Web Administrator)

### Clubs Council Website

#### SLC and SLO Member access

- Add SAC, SLO, and SLC as bodies (supervisory bodies)
- SLO manages SAC, SLC also; there is no login since there is no email with that account.
- Supervisory bodies now show up as a separate manageable entry just like Clubs and Student Bodies.

![supervisory_bodies](/images/reports/Aug26/supervisory_bodies.png)

Also done integrating the following emails by SLO

![new_info_slc](/images/reports/Aug26/new_info_slc.png)

#### Achievements Page

- Integrated emailing into the achievement page

![email1_achievements](/images/reports/Aug26/email1_achievements.png)

![email2_achievements](/images/reports/Aug26/email2_achievements.png)

#### Budget Table changes

- Event report page now contains budget information table on the right
- Make the layout more responsive and move prices around.

![budget](/images/reports/Aug26/budget.png)

#### Inventory Management System

- Added emailing support
- Added invoice numbers
- Found a bunch of bugs in the flow need to fix.

- **PENDING** – Final testing before deployment, need to have a meet with CC to show them the full packaged product and final suggestions.

### LDAP mock issue 

Recently the sysadmins have changed the wait time for ip addresses, our mock ldap uses a static ip address. This is causing issues with the ldap mock.

We added header based authentication to mock ldap.

![ldap_password](/images/reports/Aug26/ldap_password.png)

![ldap_ips](/images/reports/Aug26/ldap_ips.png)

### Help keerthana make CDith new user

Create a new user for Chaithanya Maddina, so that they can do changes to the CDith.

![cdith](/images/reports/Aug26/cdith.png)

Also, invesigate failiures with the CQST website with Keerthana also take JP sir's help.

### IIIT Main Site

#### Update iiit main site by Dileep

- Update the main site by repeating all the changes done in sectest.
- Fix the elementor pro issues that arised (by Evan).

#### [BUG] News letter edits

These two changes are new issues related to elementor pro after Dileep did updates.

![newsletter_edits](/images/reports/Aug26/newsletter_edits.png)

![newsletter_heading](/images/reports/Aug26/newsletter_heading.png)

#### [Bug] Staff members were not being shown 

A limit was set on the number of staff being shown on the frontend, Ashwin has modified it to 110 for now and can be increased later. I have attached an image for reference as well.

![staff_members_limit](/images/reports/Aug26/staff_members_limit.png)!

#### Alumni Awards Page (By Esther Suchita)

The alumni awards page needs to be updated, content wise but since the code is in html/css/js the updates need to be done by us

![alumni_awards](/images/reports/Aug26/alumni_awards.png)

New updated page can be found at https://iiit.ac.in/alumni-awards

### Prepare a list of outdated clubs not meant to be in the list

- Webadmins make a list of clubs/student bodies no longer functioning, requesting for deletion.

![outdated](/images/reports/Aug26/outdated.png)




## Pending or stalled work

- Move all the repositories to code.iiit.ac.in created by Vedant
- Placements page needs a rewrite, discuss with Placements Cell on how to proceed doing so. The talks have been initiated but stuck with communications.
- Investigate why cqst server was downed. Try to address the wordpress issue.