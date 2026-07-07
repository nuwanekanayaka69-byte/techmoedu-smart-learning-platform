# 06 - Deployment Architecture

## Overview

The TechmoEDU Smart Learning Platform will be deployed using cloud-based hosting services.

## Deployment Platforms

- GitHub for source code management
- Firebase Hosting for production deployment
- Firebase Console for backend management

## Deployment Flow

Developer writes code in VS Code.

Code is committed using Git.

Code is pushed to GitHub.

Application is built using Vite.

Production build is deployed to Firebase Hosting.

## Hosting

Firebase Hosting will serve the web application with:

- HTTPS
- Fast loading
- Global CDN
- Easy rollback
- Free hosting plan support

## Environments

- Development
- Testing
- Production

## Deployment Responsibilities

- GitHub stores the project source code.
- Firebase Hosting serves the final website.
- Firebase Firestore stores application data.
- Firebase Authentication manages users.

## Version

1.0
