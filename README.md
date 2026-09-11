# Détection des Mécanismes de Persistance Linux avec Wazuh

![Wazuh](https://img.shields.io/badge/Wazuh-SIEM-blue)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Completed-success)

> Détection automatisée des mécanismes de persistance Linux via une défense multicouche : **File Integrity Monitoring (FIM)** + **Auditd** + **règles personnalisées Wazuh** mappées sur **MITRE ATT&CK (TA0003)**.

---

##  Contexte

Projet réalisé dans le cadre du module **Cybersécurité Intelligente et Technologies Émergentes** à l'**Université Mohammed V de Rabat**, encadré par **Pr. SBAI Oussama**.

**Équipe :**
- EL-KHABBAOUI Iliass
- MANSOURI Mohamed Amine
- KHASSAL Salah Edine

---

##  Objectifs

- Concevoir un système de détection **temps réel** des mécanismes de persistance Linux.
- Couvrir les vecteurs classiques (Cron, Systemd, SSH keys, .bashrc) **et** furtifs (LD_PRELOAD, fileless).
- Mapper chaque détection sur le framework **MITRE ATT&CK**.
- Valider l'architecture par des **scénarios d'attaque réels (PoC)**.

---

##  Architecture

| Composant | Rôle |
|---|---|
| **Wazuh Manager** | Analyse, corrélation, tableau de bord |
| **Wazuh Agent** | Collecte sur la machine cible (`fsft`, Ubuntu 12.10) |
| **VMware Workstation** | Hyperviseur du laboratoire isolé |
| **VulnHub fsft VM-1** | Machine cible vulnérable (CTF) |
---
##  Stratégie de détection

### 1. File Integrity Monitoring (FIM)

Répertoires surveillés en temps réel :

```xml
<directories check_all="yes" realtime="yes">/etc/cron.d</directories>
<directories check_all="yes" realtime="yes">/etc/rc.local</directories>
<directories check_all="yes" realtime="yes">/etc/init.d</directories>
<directories check_all="yes" realtime="yes">/var/spool/cron</directories>
<directories check_all="yes" realtime="yes">/etc/profile.d</directories>
