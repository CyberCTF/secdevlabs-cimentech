# secDevLabs Cimentech

[secDevLabs](https://github.com/globocom/secDevLabs)' [`owasp-top10-2021-apps/a6/cimentech`](https://github.com/globocom/secDevLabs/tree/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a6/cimentech) app, by Globo.com and the
secDevLabs contributors: a company site built on Drupal 7.57 with PostgreSQL, a Vulnerable and Outdated Component (Drupalgeddon 2, CVE-2018-7600). This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines, built from
the vendored app folder (see [UPSTREAM.md](UPSTREAM.md)).

| Machine | Service |
| --- | --- |
| drupal | Drupal 7.57 on port 80 |
| a9db | PostgreSQL 10.5 on port 5432 (lab network only) |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost/ (port 80, as upstream). The same spec runs as Docker on a local VM (`docker-vm`), on a cloud VM
(`cloud-docker`) or on Kubernetes. Lab guide: the app's
[README](https://github.com/globocom/secDevLabs/blob/10be438496e928c66567749f0aaf0bb976052bc9/owasp-top10-2021-apps/a6/cimentech/README.md), with the attack narrative and the secDevLabs walkthrough.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

BSD-3-Clause, as secDevLabs ([LICENSE](LICENSE)). The third-party software inside the images keeps
its own licence. This application is deliberately vulnerable: keep it isolated.
