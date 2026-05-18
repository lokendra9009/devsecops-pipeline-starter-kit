# Security Pipeline Report

## Executive Summary

Build Status: Failed  
Reason: Critical dependency vulnerability detected  
Internet Facing: Yes

## Risk Summary

| Category | Critical | High | Medium | Low |
|---|---:|---:|---:|---:|
| Dependency Scan | 1 | 4 | 8 | 12 |
| Container Scan | 0 | 2 | 5 | 9 |
| Secret Scan | 0 | 0 | 0 | 0 |
| SAST | 0 | 1 | 3 | 6 |

## Top Findings to Fix First

| Priority | Finding | Reason |
|---|---|---|
| 1 | Critical CVE in runtime dependency | Internet-facing service |
| 2 | High vulnerability in base image | Exploitable package in container |
| 3 | Weak input validation warning | Authentication-related code path |

## Recommended Action

Fix the critical dependency before release. High vulnerabilities may proceed only with approved exception and expiry date.