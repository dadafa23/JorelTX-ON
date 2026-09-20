#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

VKBASALT_DIR="$HOME/.config/vkBasalt"
INSTALL_DIR="$VKBASALT_DIR/shaders/JorelTX-ON"

echo "========================================"
echo "       JorelTX-ON V5 - Installer"
echo "========================================"
echo

echo "[1/3] Verificando arquivos do projeto..."

SHADER_SOURCE="$PROJECT_DIR/shaders/JorelTX-ON"

for file in \
    Curves.fx \
    Tonemap.fx \
    Vibrance.fx \
    ReShade.fxh \
    ReShadeUI.fxh
do
    if [[ ! -f "$SHADER_SOURCE/$file" ]]; then
        echo
        echo "ERRO: arquivo ausente:"
        echo "  $SHADER_SOURCE/$file"
        exit 1
    fi
done

echo "OK: arquivos do JorelTX-ON encontrados."
echo

echo "[2/3] Instalando shaders..."

mkdir -p "$INSTALL_DIR"

cp "$SHADER_SOURCE/Curves.fx" "$INSTALL_DIR/"
cp "$SHADER_SOURCE/Tonemap.fx" "$INSTALL_DIR/"
cp "$SHADER_SOURCE/Vibrance.fx" "$INSTALL_DIR/"
cp "$SHADER_SOURCE/ReShade.fxh" "$INSTALL_DIR/"
cp "$SHADER_SOURCE/ReShadeUI.fxh" "$INSTALL_DIR/"

echo "OK: shaders instalados em:"
echo "  $INSTALL_DIR"
echo

echo "[3/3] Verificando vkBasalt..."

if ! command -v vkbasalt >/dev/null 2>&1; then
    echo
    echo "AVISO: vkBasalt não foi encontrado no PATH."
    echo "Instale o vkBasalt antes de ativar o JorelTX-ON V5."
    echo
else
    echo "OK: vkBasalt encontrado."
fi

echo
echo "========================================"
echo "       Instalação concluída!"
echo "========================================"
echo
echo "Shaders instalados:"
echo "  $INSTALL_DIR"
echo
echo "Arquivos instalados:"
echo "  Curves.fx"
echo "  Tonemap.fx"
echo "  Vibrance.fx"
echo "  ReShade.fxh"
echo "  ReShadeUI.fxh"
echo
echo "Sua configuração atual do vkBasalt NÃO foi alterada."
echo
echo "Dependências externas do V5:"
echo "  BloomingHDR.fx"
echo "  Clarity.fx"
echo
echo "Esses shaders não são redistribuídos pelo JorelTX-ON."
echo "Eles serão verificados separadamente durante a ativação."
echo
echo "SMAA e CAS são efeitos fornecidos pelo próprio vkBasalt."
echo
