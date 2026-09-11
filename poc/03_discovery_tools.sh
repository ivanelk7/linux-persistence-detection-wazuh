#!/bin/bash
# =====================================================================
# PoC 3 — Commandes de reconnaissance (Discovery)
# MITRE ATT&CK : T1059
# Détection attendue : Règle 100006 (Niveau 10 via Auditd)
# =====================================================================

echo "[*] Exécution de commandes de reconnaissance..."

whoami
id
uname -a
hostname
cat /etc/passwd | head -5

echo "[+] Commandes exécutées — Alerte Niveau 10 attendue (règle 100006)"