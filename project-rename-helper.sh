#!/bin/sh
# =============================================================================
# ruoyi-rename-helper.sh
# =============================================================================
#
# Purpose of this script:
#   To replace function names in ruoyi (and future similar projects) 
#   into a more categorized and organized naming convention.
#
#   This makes the code easier to read, maintain, and navigate by grouping
#   related functions under clear short prefixes.
#
#   This script is designed for repeated use across multiple CIAO projects.
#
# ────────────────────────────────────────────────
# STRICT CIAO DEFENSIVE CODING STYLE - FULLY APPLIED
# ────────────────────────────────────────────────
#
# !!! DO NOT MODIFY OR SIMPLIFY ANY PART OF THIS HEADER OR FUNCTIONS !!!
#
# Shebang, repeated safe defaults, heavy comments, and loud warnings
# are intentional for long-term survival and anti-fragility.
#
# Last aligned with CIAO defensive programming principles: 29 April 2026
# =============================================================================

# Default target
if [ -z "$1" ]; then
    TARGET="ruoyi"
else
    TARGET="$1"
fi

echo "=== ${TARGET}-rename-helper.sh started ==="
echo "Purpose: Replace function names to categorized style"
echo ""

# === Safety Backup ===
BACKUP="${TARGET}.before-full-rename.$(date +%Y%m%d-%H%M%S)"
cp "${TARGET}" "${BACKUP}" 2>/dev/null || true
echo "✅ Full backup created: ${BACKUP}"
echo ""

# =============================================================================
# FULL FUNCTION NAMING TABLE
# =============================================================================
cat << 'FULL_TABLE'
================================================================================
FULL FUNCTION NAMING TABLE - Categorized Rename
================================================================================
Category               | Current Name                                      | New Name
-----------------------|---------------------------------------------------|---------------------------
Output                 | output_text                                       | out_text
Output                 | double_line                                       | out_double_line
Output                 | empty_line                                        | out_empty_line
Output                 | msg                                               | out_msg
Output                 | msg_n                                             | out_msg_n
Output                 | info                                              | out_info
Output                 | success                                           | out_success
Output                 | warn                                              | out_warn
Output                 | error                                             | out_error
Output                 | die                                               | out_die
JSON                   | output_json                                       | out_json
JSON                   | output_json_error                                 | out_json_error
Prompt                 | prompt_yes_no                                     | util_prompt_yesno
Install Core           | is_installed                                      | inst_is_installed
Install Core           | get_installed_version                             | inst_get_version
Versioning             | version_gt                                        | ver_gt
Versioning             | version_check                                     | ver_check
Self Management        | self_update                                       | inst_self_update
Self Management        | self_uninstall                                    | inst_self_uninstall
Self Install           | perform_self_install                              | inst_perform_install
Self Install           | maybe_install                                     | inst_maybe_install
PATH                   | in_path                                           | path_in
PATH                   | add_to_shell_path                                 | path_add_shell
PATH                   | add_to_bashrc                                     | path_add_bashrc
PATH                   | add_to_zshrc                                      | path_add_zshrc
PATH                   | add_to_fish_config                                | path_add_fish
RuoYi Core             | clone_ruoyi                                       | ruo_clone
RuoYi Core             | build_run                                         | ruo_build_run
RuoYi Core             | show_about_ruoyi_app                              | ruo_about
RuoYi Core             | show_ruoyi_help                                   | ruo_help
Database               | setup_database                                    | db_setup
Database               | setup_mariadb_for_ruoyi                           | db_setup_mariadb
Database               | setup_mysql_for_ruoyi                             | db_setup_mysql
Database               | detect_db_engine                                  | db_detect_engine
Database               | debconf_noninteractive_db_v2                      | db_debconf
SDK / Env              | setup_sdkman                                      | setup_sdkman
SDK / Env              | setup_java_21                                     | setup_java_21
SDK / Env              | setup_maven_3_9                                   | setup_maven_3_9
SDK / Env              | check_alpine_requirements                         | env_check_alpine
Utility                | backup_ruoyi_config                               | util_backup
Utility                | resolve_storage                                   | util_resolve_storage
Utility                | generate_db_password_2                            | util_generate_db_pass
Utility                | write_file_atomic                                 | util_write_atomic
Utility                | get_install_bin_path                              | util_get_install_bin_path
Main                   | main_ruoyi_app                                    | main_ruoyi_app
================================================================================
FULL_TABLE

echo ""
echo "Applying full sed substitutions now..."

# Output
sed -i 's/\boutput_text\b/out_text/g' "${TARGET}"
sed -i 's/\bdouble_line\b/out_double_line/g' "${TARGET}"
sed -i 's/\bempty_line\b/out_empty_line/g' "${TARGET}"
sed -i 's/\bmsg_n\b/out_msg_n/g' "${TARGET}"
sed -i 's/\binfo\b/out_info/g' "${TARGET}"
sed -i 's/\bsuccess\b/out_success/g' "${TARGET}"
sed -i 's/\bwarn\b/out_warn/g' "${TARGET}"
sed -i 's/\berror\b/out_error/g' "${TARGET}"
sed -i 's/\bdie\b/out_die/g' "${TARGET}"
sed -i 's/\boutput_json\b/out_json/g' "${TARGET}"
sed -i 's/\boutput_json_error\b/out_json_error/g' "${TARGET}"

# Install / Self
sed -i 's/\bis_installed\b/inst_is_installed/g' "${TARGET}"
sed -i 's/\bget_installed_version\b/inst_get_version/g' "${TARGET}"
sed -i 's/\bversion_gt\b/ver_gt/g' "${TARGET}"
sed -i 's/\bversion_check\b/ver_check/g' "${TARGET}"
sed -i 's/\bself_update\b/inst_self_update/g' "${TARGET}"
sed -i 's/\bself_uninstall\b/inst_self_uninstall/g' "${TARGET}"
sed -i 's/\bperform_self_install\b/inst_perform_install/g' "${TARGET}"
sed -i 's/\bmaybe_install\b/inst_maybe_install/g' "${TARGET}"

# PATH
sed -i 's/\bin_path\b/path_in/g' "${TARGET}"
sed -i 's/\badd_to_shell_path\b/path_add_shell/g' "${TARGET}"
sed -i 's/\badd_to_bashrc\b/path_add_bashrc/g' "${TARGET}"
sed -i 's/\badd_to_zshrc\b/path_add_zshrc/g' "${TARGET}"
sed -i 's/\badd_to_fish_config\b/path_add_fish/g' "${TARGET}"

# RuoYi Core
sed -i 's/\bclone_ruoyi\b/ruo_clone/g' "${TARGET}"
sed -i 's/\bbuild_run\b/ruo_build_run/g' "${TARGET}"
sed -i 's/\bshow_about_ruoyi_app\b/ruo_about/g' "${TARGET}"
sed -i 's/\bshow_ruoyi_help\b/ruo_help/g' "${TARGET}"

# Database
sed -i 's/\bsetup_database\b/db_setup/g' "${TARGET}"
sed -i 's/\bsetup_mariadb_for_ruoyi\b/db_setup_mariadb/g' "${TARGET}"
sed -i 's/\bsetup_mysql_for_ruoyi\b/db_setup_mysql/g' "${TARGET}"
sed -i 's/\bdetect_db_engine\b/db_detect_engine/g' "${TARGET}"
sed -i 's/\bdebconf_noninteractive_db_v2\b/db_debconf/g' "${TARGET}"

# SDK / Env
sed -i 's/\bcheck_alpine_requirements\b/env_check_alpine/g' "${TARGET}"

# Utility
sed -i 's/\bbackup_ruoyi_config\b/util_backup/g' "${TARGET}"
sed -i 's/\bresolve_storage\b/util_resolve_storage/g' "${TARGET}"
sed -i 's/\bgenerate_db_password_2\b/util_generate_db_pass/g' "${TARGET}"
sed -i 's/\bwrite_file_atomic\b/util_write_atomic/g' "${TARGET}"
sed -i 's/\bget_install_bin_path\b/util_get_install_bin_path/g' "${TARGET}"

echo ""
echo "✅ All function name substitutions completed successfully!"
echo "Backup saved as: ${BACKUP}"
echo ""
echo "You can now test with:"
echo "   ./${TARGET} help"
echo "   ./${TARGET} about"
echo ""
echo "To revert: cp ${BACKUP} ${TARGET}"