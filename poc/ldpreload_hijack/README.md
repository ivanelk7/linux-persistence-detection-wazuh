# PoC 4 — LD_PRELOAD Hijacking

## Compilation
\`\`\`bash
make
\`\`\`

## Exécution
\`\`\`bash
LD_PRELOAD=./libhijack.so id
\`\`\`

## Résultat
- Le binaire `/usr/bin/id` n'est **pas modifié** → invisible pour FIM.
- **Auditd détecte** l'exécution via `execve` → alerte Niveau 10 (règle 100006).