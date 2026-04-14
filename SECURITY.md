# Security Policy

**Last updated:** April 2026

`ruoyi` takes security seriously. We appreciate the efforts of security researchers and users who responsibly disclose vulnerabilities.

This document outlines how to report security issues and our commitment to handling them responsibly.

---

## Supported Versions

We currently provide security updates for the latest released version only.

| Version | Supported          |
|---------|--------------------|
| 2.0.0   | :white_check_mark: |
| < 2.0.0 | :x:                |

If you are running an older version, we strongly recommend upgrading to the latest release using:

```bash
ruoyi self-update
```

---

## Reporting a Vulnerability

**Please do not report security vulnerabilities through public GitHub issues or pull requests.**

We request that you report them privately so we can investigate and fix the issue before it becomes public.

### How to Report

Send an email to: **security@cloudgen.dev** (or open a **private vulnerability report** on GitHub if available).

Please include the following information in your report:

- **Description** of the vulnerability
- **Steps to reproduce** the issue (as detailed as possible)
- **Affected component** (e.g., installer script, database setup, Redis setup, RuoYi configuration, etc.)
- **Potential impact** (e.g., remote code execution, data leak, privilege escalation, etc.)
- Any suggested **mitigation** or fix (if you have one)
- Your name/handle (optional, for credit in the disclosure)

We will acknowledge receipt of your report within **48 hours** (usually much faster).

### What Happens Next

1. We will confirm receipt and assign a severity level.
2. We will investigate and work on a fix (usually within a few days, depending on complexity).
3. Once fixed, we will release a new version and notify you.
4. After the fix is public, we will credit you (unless you prefer to stay anonymous).

We follow a **coordinated disclosure** policy: we do not publicly discuss or disclose the vulnerability until a fix is available.

---

## Disclosure Policy

- We aim to release security fixes as quickly as possible.
- We prefer **responsible disclosure** — giving us reasonable time to fix before public disclosure.
- We will publish security advisories via GitHub when appropriate.
- This is a small/maintained-by-one project, so response times may vary during weekends or holidays.

---

## Security Best Practices for Users

- Always run the latest version of `ruoyi` (`ruoyi self-update`).
- Use `--force` with caution — it performs backups, but review them.
- Review database passwords generated during `ruoyi mariadb` / `ruoyi mysql`.
- For production deployments, do **not** use the default admin credentials (`admin` / `admin123`).
- Keep your Java, Maven, MariaDB/MySQL, and Redis versions up to date.
- Run the installer and database setup with the minimum required privileges.

---

## Security Considerations Specific to This Project

- The script performs **internal sudo escalation** only for privileged operations (package installation, service management, database creation). It never requires you to run the entire command with `sudo` unless installing globally.
- All destructive operations (project reset, file modifications) create **dated backups** first.
- The project follows strict **CIAO** defensive principles (Caution, Intentionality, Anti-fragility) to reduce the risk of accidental misconfiguration.
- We pin Java 21 (Temurin) and Maven to known-good versions for reproducibility.

---

## Comments on This Policy

If you have suggestions to improve this security policy, feel free to open a pull request or issue (non-sensitive topics only).

Thank you for helping keep `ruoyi` secure!

---

**Made with ❤️ and extreme caution.**
