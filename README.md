# **The Fortress Setup: Mobile-First Headless Environment**

## **Overview**
This repository documents a high-security, **de-Googled**, and **CLI-centric** mobile environment built on the **Motorola Moto G06 Power (Android 15)**. This is not a standard smartphone setup; it is a **hardened mobile node** designed for digital sovereignty, automated monitoring, and zero-telemetry workflows.

The core philosophy is to treat the Android OS merely as a bootloader for a comprehensive, terminal-based ecosystem where the GUI is secondary to the command line.

---

## **Technical Architecture**

### **1. OS Hardening & Debloating**
* **Hardware:** **Motorola G06 Power** (optimized for extended uptime and battery-intensive background tasks).
* **Zero-GMS / Zero-Telemetry:** Complete removal of Google Mobile Services (GMS), Motorola Frameworks, and vendor bloatware (System Intelligence, CCC, Overlays) via **ADB User 0**.
* **Performance Tuning:** * Forced GPU rendering for UI consistency.
    * Animations disabled and Log Buffer terminated to minimize CPU interrupts and latency.

### **2. Execution Environment**
* **Primary Interface:** **Termux** acting as the system launcher via `AnyHome`.
* **Virtualization:** A **PRoot-containerized Debian** environment for running full-scale Linux binaries (Node.js, Python, Databases) isolated from the Android host.
* **Navigation:** Navigation tasks are offloaded to a secondary dedicated device to keep the "Fortress" clean of GPS tracking and map-cache bloat.

### **3. Security & Cryptography**
* **Encrypted Secrets:** All passwords and sensitive credentials are managed via **GPG (GNU Privacy Guard)**. No plain-text credentials reside on the device.
* **Secondary Access Layer:** Termux entry is protected by a cryptographic challenge-response or GPG-based gate.
* **Panic Button:** A custom-engineered emergency sequence. 
    * **Trigger:** Instant recursive scrub of active sessions and volatile data.
    * **Purpose:** To neutralize the environment in case of physical compromise.

---

## **The TUI Ecosystem (Software Stack)**

| Domain | Tool | Description |
| :--- | :--- | :--- |
| **Search** | `ddgr` + `w3m` | Privacy-focused terminal web browsing. |
| **Email** | `Neomutt` | Full-scale CLI email client. |
| **Tasks** | `Taskbook` | Minimalist task & note management. |
| **Media** | `MPV` | Audio/Video playback via terminal. |
| **Calculations** | `Insect` | High-precision scientific calculator. |
| **Weather** | `ttr` | Lightweight terminal weather reports. |
| **Automation** | `Python`/`Bash` | Custom scripts for IoT and system logic. |

---

## **Automation & Personal Hobby Integration**
The environment acts as a **Mobile PLC (Programmable Logic Controller)**.

* **Aquaristics Automation:** The system runs custom-built scripts for monitoring water chemistry, temperature, and hardware parameters for aquariums. 
* **Modularity:** While this setup is tailored for my hobby in aquaristics, the underlying architecture is modular. Users can integrate their own automation scripts for any specialized field (e.g., Home Automation, Network Analysis, etc.).

---

## **Design Principles**
* **Absolute Paths:** All aliases and scripts use full paths (e.g., `/data/data/com.termux/files/home/...`) for 100% reliability.
* **FOSS-Only:** Every tool is sourced from **F-Droid** or compiled from source. No proprietary binaries allowed.
* **Headless Workflow:** 90% of user interaction is text-based, drastically reducing RAM overhead.

---

### **Performance Metrics**
* **Resource Efficiency:** ~3.1GB / 3.6GB Available RAM (Optimized via `MemAvailable` metrics).
* **Privacy Status:** Verified zero pings to Google/OEM infrastructure.
