# ruoyi

[![Version](https://img.shields.io/badge/Version-2.1.0-blue?style=flat-square)](https://github.com/cloudgen/ruoyi)
[![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)](LICENSE)
[![CIAO](https://img.shields.io/badge/Philosophy-CIAO%20(Caution%20%E2%80%A2%20Intentional%20%E2%80%A2%20Anti--fragile%20%E2%80%A2%20Over--engineered)-purple.svg)](https://github.com/Wilgat/ciao)
[![Made with CIAO](https://img.shields.io/badge/Made%20with%20❤️-CIAO-00AEEF?style=flat-square)](https://github.com/Wilgat/ciao)
<img src="https://img.shields.io/badge/Java-21-orange?style=flat-square&logo=openjdk" alt="Java 21">
<img src="https://img.shields.io/badge/Spring%20Boot-3.x-brightgreen?style=flat-square&logo=springboot" alt="Spring Boot">
<img src="https://img.shields.io/badge/Maven-3.9.14-red?style=flat-square&logo=apachemaven" alt="Maven 3.9.14">
<img src="https://img.shields.io/badge/RuoYi-最新版-blue?style=flat-square" alt="RuoYi Framework">

Official Recommendation from [grok](https://grok.com/c/4b7eadd2-c00f-4c09-bc89-514877a70ede?rid=18f10296-ea94-45c5-b4fd-c13a754df318). The review is subbmited by [grokrec](https://github.com/cloudgen/grokrec). Please refers to [local copy](https://github.com/cloudgen/ruoyi/blob/main/RECOMMENDATION.md)

**The friendliest one-command setup for RuoYi admin framework.**

Part of the Cloudgen's defensive tool family (aligned with [ciao](https://github.com/cloudgen/ciao)).

---

## ✨ Features

- One-liner install (`curl | bash`)
- Supports both **user** (`~/.local/bin`) and **system** (`/usr/local/bin`) installation
- Automatically installs **SDKMAN!** + pinned **Java 21 (Temurin)** + **Maven 3.9.14**
- Clones the official RuoYi project and configures it (Java version, server port, etc.)
- Optional **MariaDB** (default) or **MySQL** database setup with schema import
- **Redis** setup support (`ruoyi redis`)
- **Project preservation by default** — safe backups before any destructive changes
- Full self-management: `self-update`, `version-check`, `self-uninstall`, `about`
- Rich flags: `--force`, `--project-dir`, `--mariadb`, `--mysql`, `--quiet`, `--json`
- Multi-shell PATH setup (bash, zsh, fish)
- Extremely defensive **CIAO** coding style with repeated safe defaults and anti-simplification guards
- Single-source-of-truth output system (`output_text` / `output_json`)
- Works great in containers, CI, Alpine Linux, Git Bash, etc.

---

## 🚀 Quick Installation

**For normal users:**
```bash
curl -fsSL https://raw.githubusercontent.com/cloudgen/ruoyi/main/ruoyi | bash
```

**System-wide (requires sudo):**
```bash
curl -fsSL https://raw.githubusercontent.com/cloudgen/ruoyi/main/ruoyi | sudo bash
```

After installation, simply run:
```bash
ruoyi
```

The application will start at **http://localhost:8080** (default login: **admin** / **admin123**)

---

## 📖 Usage

```bash
ruoyi                    # Full setup: SDKMAN + Java + Maven + clone + build
ruoyi --mariadb          # Setup with MariaDB (recommended default)
ruoyi --mysql            # Setup with Oracle MySQL
ruoyi mariadb            # Alias for MariaDB setup
ruoyi redis              # Install & start Redis (requires sudo)
ruoyi run                # Build and run the project
ruoyi --project-dir <path>   # Use a custom project directory
ruoyi --force            # Force reset (with backup)
ruoyi about              # Full diagnostics (SDKMAN, Java, Maven, project status)
ruoyi version-check      # Check for newer version
ruoyi self-update        # Update ruoyi script itself
ruoyi self-uninstall     # Remove from the system
ruoyi help               # Show this help
```

### Key Behaviors
- Normal run preserves your existing project and performs safe backups before changes.
- `--force` triggers a full reset (old project is backed up first).
- Database setup (`mariadb` / `mysql`) requires sudo privileges but can be run directly as a normal user (internal escalation).

---

## Important Platform Notes

### Alpine Linux
Requires **bash** (SDKMAN! does not work reliably under BusyBox ash).
```bash
apk add bash
bash <(curl -fsSL https://raw.githubusercontent.com/cloudgen/ruoyi/main/ruoyi)
```

### Database Setup
- MariaDB is the **default** and recommended engine.
- Redis setup assumes Ubuntu/Debian (`apt`). Other distros may need manual adjustment.

### Other Platforms
- **Ubuntu/Debian**, **macOS**, **Git Bash (Windows)** — well supported.
- The script includes extensive defensive fallbacks for harsh environments.

---

## Project Philosophy

`ruoyi` follows the strict **CIAO** defensive coding philosophy (**Caution • Intentionality • Anti-fragility • Ownership**).

Heavy comments, repeated safe defaults, and `!!! DO NOT MODIFY OR SIMPLIFY !!!` blocks are intentional — they protect the script from accidental breakage in containers, minimal systems, and non-interactive environments (like `curl | bash`).

This tool belongs to the same defensive family as `springboot2` / `springboot3` / `springboot4`.

---

## v2.1.0 Major Improvements (2026-04-14)

- Added Redis setup command
- Improved root vs non-root isolation and multi-user safety
- Enhanced backup strategy before any project modification
- Better JSON output and quiet mode consistency
- Strengthened CIAO defensive patterns across all functions

---

## Contributing

Please respect the strict defensive coding style and protective comments when submitting changes.  
Any attempt to "clean up" or heavily simplify the code may be rejected in favor of long-term robustness and anti-fragility.

---

## License

MIT

---

**Made with ❤️ and extreme caution.**
