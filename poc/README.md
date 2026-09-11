#  PoC — Scénarios de test de persistance Linux

Scripts utilisés pour valider la détection des mécanismes de persistance par Wazuh.

**Avertissement** : destinés à un **environnement de laboratoire isolé uniquement**.

| # | Script | Vecteur | MITRE | Détection |
|---|---|---|---|---|
| 1 | `01_cron_persistence.sh` | Cron malveillant | T1053 | Règle 100005 |
| 2 | `02_ssh_key_injection.sh` | Clé SSH | T1098 | Règles 100005 + 100006 |
| 3 | `03_discovery_tools.sh` | Reconnaissance | T1059 | Règle 100006 |
| 4 | `ldpreload_hijack/` | LD_PRELOAD | T1574.006 | Règle 100006 |