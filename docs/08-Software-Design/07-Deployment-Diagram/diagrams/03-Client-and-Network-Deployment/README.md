# DEP-03 – Client and Network Deployment

> **Project:** TechmoEDU Smart Learning Platform  
> **Module:** 07 – Deployment Diagram  
> **Diagram ID:** DEP-03  
> **Version:** 1.0  
> **Status:** Approved for Design  
> **Standard:** UML 2.5.x Deployment Diagram  
> **Architecture Style:** Web-based, Cloud-hosted, Secure Client–Network Architecture

---

## 1. Overview

The **Client and Network Deployment Diagram** describes how users access the TechmoEDU Smart Learning Platform through desktop computers, laptops, tablets, and mobile devices. It shows the browser runtime, local access network, DNS resolution, public Internet, HTTPS/TLS communication, CDN delivery, Firebase Hosting, Firebase Authentication, Cloud Functions, Cloud Firestore, Firebase Storage, Firebase Cloud Messaging, and operational monitoring services.

---

## 2. Purpose

This diagram is intended to:

- Represent supported client devices.
- Show the end-to-end network access path.
- Document DNS, HTTPS/TLS, CDN, and cloud communication.
- Identify trust boundaries and security enforcement points.
- Show how client requests reach Firebase services.
- Support network design, testing, troubleshooting, security review, final report preparation, and viva presentation.

---

## 3. Scope

The diagram includes:

- Desktop client
- Laptop client
- Tablet client
- Mobile client
- Modern web browser
- Local Wi-Fi / LAN / mobile network
- Router and firewall
- DNS resolution
- Public Internet
- HTTPS/TLS
- CDN edge delivery
- Firebase Hosting
- Firebase Authentication
- Cloud Functions
- Cloud Firestore
- Firebase Storage
- Firebase Cloud Messaging
- Analytics
- Cloud Logging
- Performance Monitoring

---

## 4. Client Layer

Supported client devices include:

- Desktop computers used by institute administrators and teachers
- Laptop computers used by teachers and administrators
- Tablets used by students, teachers, and parents
- Mobile phones used by students and parents

All client access is provided through a standards-compliant web browser.

---

## 5. Browser Runtime

The browser executes the deployed frontend application and is responsible for:

- Rendering the user interface
- Managing local application state
- Handling secure authentication sessions
- Calling Firebase SDKs
- Uploading and downloading approved resources
- Receiving notification tokens
- Sending approved analytics and performance events

Sensitive authorization decisions must not rely only on browser-side code.

---

## 6. Local Network Layer

Client devices connect through:

- School or institute LAN
- Home Wi-Fi
- Mobile data networks
- Public or managed Internet access

The local router and firewall provide network address translation, basic access control, and outbound Internet connectivity.

---

## 7. DNS and Internet Layer

The browser resolves the TechmoEDU domain through DNS. Traffic then passes over the public Internet to Firebase Hosting and related managed services.

All production communication must use HTTPS with valid TLS certificates.

---

## 8. CDN and Hosting Layer

Firebase Hosting and CDN edge nodes provide:

- Global content delivery
- Static asset caching
- HTTPS certificate management
- Fast delivery of HTML, CSS, JavaScript, and media
- Route rewriting
- Production frontend deployment

---

## 9. Authentication Flow

1. The user opens the TechmoEDU application.
2. The browser connects to Firebase Hosting.
3. The user submits credentials through Firebase Authentication.
4. Firebase Authentication issues a verified ID token.
5. The browser sends the token with protected requests.
6. Cloud Functions and Firebase Security Rules validate identity and authorization.

---

## 10. Application Request Flow

```text
Client Device
     │
     ▼
Web Browser
     │
     ▼
Local Network / Router / Firewall
     │
     ▼
DNS Resolution
     │
     ▼
Public Internet
     │
     ▼
HTTPS / TLS
     │
     ▼
CDN / Firebase Hosting
     │
     ├── Firebase Authentication
     ├── Cloud Functions
     ├── Cloud Firestore
     ├── Firebase Storage
     └── Firebase Cloud Messaging
```

---

## 11. Deployment Nodes

| Node ID | Node | UML Type | Responsibility |
|---|---|---|---|
| NET-001 | Desktop Client | `<<device>>` | Administrative and teaching access |
| NET-002 | Laptop Client | `<<device>>` | Portable teaching and administration |
| NET-003 | Tablet Client | `<<device>>` | Mobile learning access |
| NET-004 | Mobile Client | `<<device>>` | Student and parent access |
| NET-005 | Web Browser | `<<executionEnvironment>>` | Runs the frontend application |
| NET-006 | Local Network | `<<network>>` | Provides LAN, Wi-Fi, or mobile connectivity |
| NET-007 | Router / Firewall | `<<networkDevice>>` | Provides NAT and network filtering |
| NET-008 | DNS Service | `<<networkService>>` | Resolves the application domain |
| NET-009 | Public Internet | `<<network>>` | Carries encrypted application traffic |
| NET-010 | CDN Edge | `<<cloudService>>` | Delivers cached frontend assets |
| NET-011 | Firebase Hosting | `<<cloudService>>` | Hosts the frontend application |
| NET-012 | Firebase Authentication | `<<identityService>>` | Verifies users and issues tokens |
| NET-013 | Cloud Functions | `<<executionEnvironment>>` | Executes protected backend logic |
| NET-014 | Cloud Firestore | `<<database>>` | Stores structured application data |
| NET-015 | Firebase Storage | `<<objectStorage>>` | Stores learning and user files |
| NET-016 | Firebase Cloud Messaging | `<<messagingService>>` | Sends push notifications |
| NET-017 | Cloud Logging | `<<monitoringService>>` | Records system and security events |
| NET-018 | Performance Monitoring | `<<monitoringService>>` | Tracks client and network performance |
| NET-019 | Firebase Analytics | `<<analyticsService>>` | Captures approved usage events |

---

## 12. Communication Matrix

| Source | Destination | Protocol / Mechanism |
|---|---|---|
| Client Device | Web Browser | Local execution |
| Web Browser | Router / Firewall | Wi-Fi, Ethernet, or mobile data |
| Router / Firewall | DNS Service | DNS over approved network path |
| Web Browser | Firebase Hosting | HTTPS/TLS |
| Firebase Hosting | Browser | CDN-delivered web assets |
| Browser | Firebase Authentication | Firebase Auth SDK over HTTPS |
| Browser | Cloud Functions | Firebase Functions SDK over HTTPS |
| Browser | Cloud Firestore | Firestore SDK + Security Rules |
| Browser | Firebase Storage | Storage SDK + Security Rules |
| Browser | Firebase Cloud Messaging | FCM registration and delivery |
| Firebase Services | Cloud Logging | Structured operational logs |
| Browser | Performance Monitoring | Performance telemetry |
| Browser | Firebase Analytics | Approved analytics events |

---

## 13. Security Boundaries

The diagram identifies these trust boundaries:

1. **Client Device Boundary** – User-controlled device and browser.
2. **Local Network Boundary** – LAN, Wi-Fi, router, and firewall.
3. **Public Internet Boundary** – Untrusted transport network.
4. **Firebase Cloud Boundary** – Managed hosting and backend services.
5. **Data Security Boundary** – Firestore and Storage protected by rules.
6. **Operations Boundary** – Logging, analytics, and monitoring services.

---

## 14. Network Security Controls

- HTTPS/TLS is mandatory.
- Plain HTTP must redirect to HTTPS.
- Firebase ID tokens are validated for protected requests.
- Firestore and Storage deny access by default.
- Cross-institute data access is prohibited.
- Role and ownership validation are enforced.
- Browser secrets are never treated as confidential.
- Administrative actions are logged.
- Public Wi-Fi should be treated as untrusted.
- Sensitive files require explicit access rules.

---

## 15. Performance and Optimization

Recommended controls include:

- CDN caching for static assets
- Compressed frontend bundles
- Lazy loading
- Image optimization
- Firestore query indexing
- Pagination
- Limited real-time listeners
- Reduced payload sizes
- Browser caching
- Performance Monitoring
- Regional planning for backend functions

---

## 16. Availability and Resilience

The deployment supports:

- Managed Firebase Hosting
- CDN-based static delivery
- Serverless backend scaling
- Retry-aware network operations
- Client-side offline-friendly behavior where suitable
- Graceful error messages
- Monitoring and logging
- Backup and restore procedures

---

## 17. Monitoring

The system should monitor:

- Page load time
- Network request latency
- Authentication failures
- Cloud Function errors
- Firestore request failures
- Storage upload failures
- Notification delivery failures
- Browser compatibility issues
- Unusual access behavior
- CDN and hosting deployment status

---

## 18. Supported Browser Baseline

Recommended support:

- Google Chrome
- Microsoft Edge
- Mozilla Firefox
- Safari on supported Apple devices

The application should use responsive design and progressive enhancement.

---

## 19. Package Structure

```text
03-Client-and-Network-Deployment/
├── README.md
├── drawio/
│   └── 03-Client-and-Network-Deployment.drawio
├── plantuml/
│   └── 03-Client-and-Network-Deployment.puml
└── png/
    └── 03-Client-and-Network-Deployment.png
```

---

## 20. Review Checklist

- [ ] All supported client devices are included.
- [ ] Browser runtime is represented.
- [ ] Local network, router, firewall, DNS, and Internet are shown.
- [ ] HTTPS/TLS is clearly labeled.
- [ ] CDN and Firebase Hosting are included.
- [ ] Authentication flow is represented.
- [ ] Cloud Functions, Firestore, Storage, and Messaging are shown.
- [ ] Monitoring, logging, and analytics are included.
- [ ] Trust boundaries are visible.
- [ ] Draw.io, PlantUML, and PNG versions are consistent.
- [ ] PNG is readable at normal report zoom.
- [ ] File naming follows project standards.

---

## 21. Definition of Done

The package is complete when:

- The Draw.io source opens and remains editable.
- The PlantUML source is valid.
- The PNG is high-resolution and report-ready.
- All nodes and communication paths are consistent.
- Security boundaries are documented.
- The folder is ready for GitHub and the final project report.

---

## 22. Version History

| Version | Date | Description | Status |
|---|---|---|---|
| 1.0 | 2026-07 | Initial complete DEP-03 package | Approved for Design |

---

## Document Control

| Field | Value |
|---|---|
| Project | TechmoEDU Smart Learning Platform |
| Module | 07 – Deployment Diagram |
| Diagram ID | DEP-03 |
| Diagram Name | Client and Network Deployment |
| Version | 1.0 |
| Status | Approved for Design |
| Owner | Software Architecture Team |
| Review Cycle | Every major client, network, or hosting change |

---

**TechmoEDU Smart Learning Platform**  
**DEP-03 – Client and Network Deployment**
