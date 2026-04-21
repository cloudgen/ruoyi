# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.1.0] - 2026-04-21

### Added
- Redis setup command (`ruoyi redis`) with internal sudo escalation, service management, connectivity test (PONG), and configuration guidance for RuoYi.
- Defensive comment blocks for `setup_redis()`, `build_run()`, `setup_mariadb_for_ruoyi()` and `setup_mysql_for_ruoyi()` documenting steps and lessons learned.
- Full restoration of MySQL setup logic to match MariaDB pattern.

### Changed
- Renamed database and Redis setup functions for clarity:
  - `setup_mariadb()` → `setup_mariadb_for_ruoyi()`
  - `setup_mysql()` → `setup_mysql_for_ruoyi()`
  - `setup_redis()` → `setup_redis_for_ruoyi()`
- Updated `build_run()` and Redis setup to strictly use single source of truth output helpers.
- Made `${PROJECT_NAME}` dynamic in startup banner and Redis config messages.

### Fixed
- Removed destructive placeholder in `setup_mysql()` that caused incomplete database setup.
- Restored consistency between MariaDB and MySQL setup paths.
- Fixed malformed help text line in `show_ruoyi_help()` (duplicate msg on same line).
- Updated call sites in `setup_database()` and main dispatcher after function renames.
- Ensured all functions respect CIAO "Over-protect" and "Intentional" principles.

### Security
- Reinforced internal sudo escalation pattern for Redis (same sacred rule as database commands).
- Maintained checksum verification layer in self-install and strict root/user isolation.

---

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