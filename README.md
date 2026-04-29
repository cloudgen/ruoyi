# ruoyi

[![Version](https://img.shields.io/badge/Version-2.2.2-blue?style=flat-square)](https://github.com/cloudgen/ruoyi)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![CIAO](https://img.shields.io/badge/Philosophy-CIAO%20(Caution%20%E2%80%A2%20Intentional%20%E2%80%A2%20Anti--fragile%20%E2%80%A2%20Over--engineered)-purple.svg)](https://github.com/Wilgat/ciao)
[![Made with CIAO](https://img.shields.io/badge/Made%20with%20❤️-CIAO-00AEEF?style=flat-square)](https://github.com/Wilgat/ciao)
<img src="https://img.shields.io/badge/Java-21-orange?style=flat-square&logo=openjdk" alt="Java 21">
<img src="https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen?style=flat-square&logo=springboot" alt="Spring Boot">
<img src="https://img.shields.io/badge/Maven-3.9.14-red?style=flat-square&logo=apachemaven" alt="Maven 3.9.14">
<img src="https://img.shields.io/badge/RuoYi-最新版-blue?style=flat-square" alt="RuoYi Framework">

Officially Reviewed and Recommended by [grok](https://grok.com/c/4b7eadd2-c00f-4c09-bc89-514877a70ede?rid=18f10296-ea94-45c5-b4fd-). Please refers to the local [copy](https://github.com/cloudgen/ruoyi/blob/main/RECOMMENDATION.md)

**The friendliest one-command setup for RuoYi admin framework.**

Built with **ShellParser** and part of the Cloudgen's defensive tool family.

---

## ✨ Features

- One-liner install (`curl | bash`)
- Supports both **user** (`~/.local/bin`) and **system** (`/usr/local/bin`) installation
- Automatically installs **SDKMAN!** + pinned **Java 21 (Temurin)** + **Maven 3.9.14**
- Clones the official RuoYi project and configures it safely
- Smart **MariaDB** (default) / **MySQL** database setup with intelligent credential handling
- **Redis** setup support (`ruoyi redis`)
- Full support for custom project folders via `--project`
- Excellent **automation & AI agent** support (`--quiet` + `--json`)
- **Interactive** + **non-interactive** friendly database setup
- Strong preference against using `root` database user in production
- Self-management: `self-update`, `version-check`, `self-uninstall`, `about`, `db-extract`

---

## 🚀 Quick Installation

**Normal user:**
```bash
curl -fsSL https://raw.githubusercontent.com/cloudgen/ruoyi/main/ruoyi | bash
```

**System-wide (requires sudo):**
```bash
curl -fsSL https://raw.githubusercontent.com/cloudgen/ruoyi/main/ruoyi | sudo bash
```

After installation, run:
```bash
ruoyi mariadb    # Recommended database setup
```

---

## 📖 Usage

### Main Commands
```bash
ruoyi                    # Full initial setup
ruoyi mariadb            # Setup MariaDB (default & recommended)
ruoyi mysql              # Setup Oracle MySQL
ruoyi redis              # Install & start Redis
ruoyi run                # Build and start the application
ruoyi about              # Show full diagnostics
ruoyi db-extract         # Show current DB credentials
```

### Important Flags
- `--project <path>` — Custom project directory (absolute path handling)
- `--quiet` — Suppress non-error output
- `--json` — Machine-readable JSON output
- `--force` — Force reset with backup

### Database Setup Behavior
**Interactive**: Prompts to avoid `root` user and create dedicated `ruoyi_user`.  
**Non-interactive**: Auto-fallback to dedicated user + random password.

---

## 🤖 ShellParser Architecture

This project is built using **[ShellParser](https://github.com/cloudgen/ShellParser)** — a modular, defensive shell scripting framework.

### ShellParser Philosophy
- **Modular & Maintainable**: Functions are cleanly categorized (`db_`, `out_`, `inst_`, `util_`, etc.)
- **CIAO Compliant**: Every component follows **Caution • Intentional • Anti-fragile • Over-protect** principles
- **Anti-simplification**: Protection zones prevent destructive "cleanups"
- **Automation First**: Designed for AI agents, CI/CD, and scriptable environments
- **Battle-tested**: Used across multiple defensive tools (ruoyi, git-sync, ciao, etc.)

ShellParser enables this project to remain extremely robust while staying human-readable and AI-agent friendly.

---

## 🤖 Designed for Automation & AI Agents

- `--json` + `--quiet` modes for perfect machine control
- Predictable behavior in headless environments
- `db-extract` for easy credential retrieval by agents
- Absolute path handling and strict error reporting

---

## Important Platform Notes

- **Alpine Linux**: Requires `bash`
- **Database**: MariaDB recommended. Respects config DB name (`ry` or `ruoyi_db`)

---

## Project Philosophy

`ruoyi` follows the strict **CIAO** defensive coding philosophy and is powered by **ShellParser**.

Heavy comments and protection zones are intentional for long-term stability.

---

## Contributing

Please respect CIAO + ShellParser architecture and protection zones.

---

## License

MIT

---

**Made with ❤️ and extreme caution.**
