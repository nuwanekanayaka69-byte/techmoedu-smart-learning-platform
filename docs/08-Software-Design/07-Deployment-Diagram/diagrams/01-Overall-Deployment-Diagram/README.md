# 01 – Overall Deployment Diagram

> **Project:** TechmoEDU Smart Learning Platform  
> **Module:** Software Design – Deployment Diagram  
> **Diagram ID:** DEP-01  
> **Version:** 1.0  
> **Status:** Approved for Design  
> **Standard:** UML 2.5.x Deployment Diagram

## Overview

The Overall Deployment Diagram presents the master physical deployment architecture of the TechmoEDU Smart Learning Platform. It shows client devices, secure network communication, Firebase cloud services, external providers, observability, backup infrastructure, and the DevOps delivery pipeline.

## Purpose

- Identify deployment nodes and runtime environments.
- Show deployed artifacts and communication paths.
- Define trust boundaries.
- Represent Firebase-managed services.
- Show external payment, email, and SMS integrations.
- Support implementation, review, deployment, maintenance, and future scaling.

## Scope

- Client devices and web browsers
- Internet, DNS, HTTPS, and TLS
- Firebase Hosting and CDN delivery
- Firebase Authentication
- Cloud Functions
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Payment Gateway
- Email and SMS Providers
- Logging, monitoring, analytics, and backup
- GitHub and CI/CD

## Deployment Nodes

| Node ID | Node | Type | Responsibility |
|---|---|---|---|
| NODE-001 | Client Device | `<<device>>` | Runs the browser |
| NODE-002 | Web Browser | `<<executionEnvironment>>` | Executes the frontend |
| NODE-003 | Public Internet | `<<network>>` | Routes encrypted traffic |
| NODE-004 | DNS and Edge Delivery | `<<network>>` | Domain resolution and CDN delivery |
| NODE-005 | Firebase Hosting | `<<cloudService>>` | Hosts the web application |
| NODE-006 | Firebase Authentication | `<<identityService>>` | Verifies identity |
| NODE-007 | Cloud Functions | `<<executionEnvironment>>` | Executes trusted backend logic |
| NODE-008 | Cloud Firestore | `<<database>>` | Stores structured data |
| NODE-009 | Firebase Storage | `<<objectStorage>>` | Stores uploaded files |
| NODE-010 | Firebase Cloud Messaging | `<<cloudService>>` | Delivers push notifications |
| NODE-011 | Payment Gateway | `<<externalSystem>>` | Processes payments |
| NODE-012 | Email Provider | `<<externalSystem>>` | Sends email |
| NODE-013 | SMS Provider | `<<externalSystem>>` | Sends SMS |
| NODE-014 | Logging and Monitoring | `<<monitoringService>>` | Collects logs and metrics |
| NODE-015 | Analytics | `<<monitoringService>>` | Captures approved usage events |
| NODE-016 | Backup Storage | `<<cloudService>>` | Stores protected backups |
| NODE-017 | GitHub Repository | `<<devopsService>>` | Stores source code |
| NODE-018 | CI/CD Pipeline | `<<executionEnvironment>>` | Builds, tests, and deploys |

## Communication Paths

| Source | Target | Communication |
|---|---|---|
| Browser | DNS and Edge | DNS + HTTPS/TLS |
| Edge | Firebase Hosting | HTTPS/CDN |
| Browser | Firebase Authentication | Firebase Auth SDK |
| Browser | Cloud Functions | HTTPS Callable / REST |
| Browser | Firestore | Firestore SDK + Security Rules |
| Browser | Storage | Storage SDK + Security Rules |
| Cloud Functions | Firestore | Firebase Admin SDK |
| Cloud Functions | Storage | Firebase Admin SDK |
| Cloud Functions | FCM | Firebase Admin SDK |
| Cloud Functions | External Providers | Authenticated HTTPS APIs |
| Payment Gateway | Cloud Functions | Signed HTTPS Webhook |
| Firebase Services | Monitoring | Structured logs and metrics |
| Firestore / Storage | Backup Storage | Scheduled protected backup |
| GitHub | CI/CD | Git-triggered workflow |
| CI/CD | Firebase | Firebase CLI deployment |

## Security Boundaries

- **Untrusted Client Zone:** client devices, browsers, public Internet
- **Firebase Managed Trust Zone:** Hosting, Authentication, Functions, Firestore, Storage, FCM
- **Trusted Backend Zone:** privileged business logic inside Cloud Functions
- **External Provider Zone:** payment, email, and SMS services
- **DevOps Trust Zone:** GitHub, CI/CD, and deployment credentials

## Core Security Controls

- HTTPS/TLS for all public communication
- Firebase Authentication
- Deny-by-default Security Rules
- Backend authorization for privileged operations
- Secret isolation and rotation
- Signed webhook validation
- Least-privilege deployment identity
- Structured audit logging
- Environment separation
- Controlled releases and rollback

## Package Structure

```text
01-Overall-Deployment-Diagram/
├── README.md
├── drawio/
│   └── 01-Overall-Deployment-Diagram.drawio
├── plantuml/
│   └── 01-Overall-Deployment-Diagram.puml
└── png/
    └── 01-Overall-Deployment-Diagram.png
```

## Review Checklist

- [ ] All required nodes are present.
- [ ] Communication paths are labeled.
- [ ] Trust boundaries are visible.
- [ ] External systems are separated.
- [ ] Monitoring and backup are included.
- [ ] DevOps deployment flow is shown.
- [ ] Draw.io, PlantUML, and PNG are consistent.
- [ ] The PNG is readable at normal zoom.

## Document Control

| Field | Value |
|---|---|
| Project | TechmoEDU Smart Learning Platform |
| Module | 07 – Deployment Diagram |
| Diagram ID | DEP-01 |
| Version | 1.0 |
| Status | Approved for Design |
| Owner | Software Architecture Team |
