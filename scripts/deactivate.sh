#!/usr/bin/env bash

set -euo pipefail

VKBASALT_DIR="$HOME/.config/vkBasalt"
CONFIG_FILE="$VKBASALT_DIR/vkBasalt.conf"
BACKUP_DIR="$VKBASALT_DIR/backups/JorelTX-ON"

echo "========================================"
echo "      JorelTX-ON V5 - Deactivator"
echo "========================================"
echo

if [[ ! -d "$BACKUP_DIR" ]]; then
echo "ERRO: diretório de backups não encontrado:"
echo "  $BACKUP_DIR"
echo
echo "Nenhuma configuração foi alterada."
exit 1
fi

LATEST_BACKUP="$(find "$BACKUP_DIR" -maxdepth 1 -type f -name 'vkBasalt.conf.????????-??????' -printf '%T@ %p\n' 2>/dev/null | sort -n | tail -1 | cut -d' ' -f2-)"

if [[ -z "$LATEST_BACKUP" || ! -f "$LATEST_BACKUP" ]]; then
echo "ERRO: nenhum backup do vkBasalt foi encontrado."
echo
echo "Nenhuma configuração foi alterada."
exit 1
fi

echo "Backup encontrado:"
echo "  $LATEST_BACKUP"
echo

if [[ -f "$CONFIG_FILE" ]]; then
TIMESTAMP="$(date '+%Y%m%d-%H%M%S')"
CURRENT_BACKUP="$BACKUP_DIR/vkBasalt.conf.before-deactivate.$TIMESTAMP"

cp -a "$CONFIG_FILE" "$CURRENT_BACKUP"

echo "Configuração atual preservada em:"
echo "  $CURRENT_BACKUP"
echo

fi

cp -a "$LATEST_BACKUP" "$CONFIG_FILE"

echo "========================================"
echo "      JorelTX-ON V5 desativado!"
echo "========================================"
echo
echo "Configuração anterior restaurada:"
echo "  $CONFIG_FILE"
echo
echo "Backup utilizado:"
echo "  $LATEST_BACKUP"
echo
