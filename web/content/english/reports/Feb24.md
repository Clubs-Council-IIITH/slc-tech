---
title: "Monthly Progress report - February 2024"
meta_title: ""
description: ""
date: 2024-03-05T05:00:00Z
image: "/images/blogs/february.png"
categories: ["Monthy Report"]
author: "Bhav Beri"
draft: false
---

## List of Tasks
- Designed and developed websites for four student bodies:
    - NSS ([nss.iiit.ac.in](https://nss.iiit.ac.in))
    - CLC ([clc.iiit.ac.in](https://clc.iiit.ac.in/))
    - Cultural Council ([cultural.iiit.ac.in](https://cultural.iiit.ac.in/))
    - Sports Council ([sports-council.iiit.ac.in](https://sports-council.iiit.ac.in/))

- Getting new server instance for the new websites
- Setting up the server for the new websites
    - Docker Containers
    - All websites are hosted on the same server
    - All websites are provided with SSL certificates
    - Nginx reverse proxy for all the websites
    - Setting up the CI/CD pipeline for the new websites - git server on the same server
    - Upgradation of RAM and Hard Disk for the server
- Clubs Council Website
    - Redirect to 404 pages when any id is not found (Error Handling)
    - Updated the website as per requests from SLO
        - Allowing editing permissions to SLO
        - Emailing debugging and correction for SLO roles
        - Compulsory POC Phone Numbers
        - Added new locations for the events
    - Updation of packages and dependencies - Security Updates on all of the microservices and the main website
    - Debugging of the POC list on the events form - it was becoming non-scrollable on some devices, and restricting the scrolling of the form page
    - Added Automated Linting and Formatting on all of the microservices.
    - Updated python versions to the latest stable version - 3.12.
    - Debug the problem with storage space filling out. And add cronjobs each of the servers.
- Copyright check of the various images on a list of websites provided by the IT Office.
- Setting up of the SACC Server instance for the Student Alumni Connect Cell with httpd and static pages.
- Get nginx working with g-hub.iiit.ac.in. And fix error that it is not working from outside iiith
- Try fix the vpn.iiit issue, which gives http instead of https in the basic authentication page. 
- Helping JP sir with ansible-ssh key problem, where public keys were being generated in other location.
