# Métriques de performance

## Résultats quantitatifs

| Indicateur | Valeur | Commentaire |
|---|---|---|
| Volume de logs | ≈ 15 Mo / jour | Filtrage noyau → bruit réduit |
| Latence moyenne | **0,85 s** | `realtime="yes"` → quasi instantané |
| Faux positifs | **< 2 %** | Ciblage des clés Auditd |
| Impact CPU | **3,5 %** | Viabilité sur système legacy |

## Résultats par vecteur

| Vecteur | Furtivité | Moteur | Détection |
|---|---|---|---|
| Tâche Cron | Basse | FIM |  Facile |
| Clés SSH | Moyenne | FIM + Audit |  Efficace |
| LD_PRELOAD | Très haute | Audit |  Complexe |
| Fileless | Maximale | — |  Limite actuelle |

## Analyse critique

Le test **LD_PRELOAD** prouve que le FIM seul est **insuffisant** face aux attaques **in-memory**. L'apport d'**Auditd** transforme Wazuh en véritable **EDR**.

## Perspectives (Hardening)

1. Surveillance `~/.config/systemd/user/`
2. Détection corruption PAM
3. Intégration ML pour analyse prédictive