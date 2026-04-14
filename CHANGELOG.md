# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Support for Redis setup (`ruoyi redis` command) with automatic installation, service start/enable, and connectivity test (Ubuntu/Debian).
- New defensive helper functions and improved output consistency across all commands.

### Changed
- Improved root vs non-root installation isolation and PATH handling for better multi-user compatibility.
- Enhanced backup strategy before destructive operations in project cloning and configuration changes.
- Updated help text and command dispatch to include Redis and database aliases.

### Fixed
- Minor inconsistencies in repeated safe variable defaults and output functions.
- Better error handling and messaging in database and build steps.

## [2.0.0] - 2026-04-14

### Added
- Complete one-command installer + launcher for RuoYi admin framework.
- Automatic installation of SDKMAN!, Java 21 (Temurin), and Maven 3.9.14.
- Project cloning from official RuoYi repository with automatic Java version and port configuration.
- Support for MariaDB (default) and MySQL database setup with schema import and configuration updates.
- Self-update, self-uninstall, version-check, and full diagnostics (`ruoyi about`) commands.
- Strict CIAO defensive coding style applied throughout (safe defaults, root/user isolation, atomic writes, backups, etc.).
- Full support for `--quiet`, `--json`, `--force`, `--project-dir`, and non-interactive usage.
- Comprehensive help system and interactive prompts that respect TTY and non-interactive environments.

### Changed
- Major rewrite to follow battle-tested defensive programming principles.
- Improved portability and reliability across environments (including Alpine, containers, Git Bash).

### Security
- Enforced strict separation between user and global installations to prevent permission issues.

---

## How to maintain this file going forward

1. Always keep the **[Unreleased]** section at the top.
2. When releasing a new version:
   - Move the content from `[Unreleased]` under a new heading like `## [2.1.0] - YYYY-MM-DD`
   - Add a new empty `[Unreleased]` section at the top.
3. Use these categories (in this order when possible):
   - **Added** — for new features.
   - **Changed** — for changes in existing functionality.
   - **Deprecated** — for soon-to-be-removed features.
   - **Removed** — for now-removed features.
   - **Fixed** — for any bug fixes.
   - **Security** — in case of vulnerabilities.

### Example for next release

```markdown
## [Unreleased]

### Added
- ...

### Changed
- ...

### Fixed
- ...