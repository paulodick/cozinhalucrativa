#!/bin/sh
# Junta o contexto mestre, a ficha da Denise e os 5 módulos num único arquivo
# para anexar no Google AI Studio. Rode de novo sempre que um módulo mudar.
set -e

RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
SAIDA="$RAIZ/ai-studio/COZINHA_LUCRATIVA_CONTEXTO_COMPLETO.txt"
MODULOS="$RAIZ/MDs/COZINHA_LUCRATIVA"

secao() {
  printf '\n\n==================================================\n'
  printf 'ARQUIVO: %s\n' "$1"
  printf '==================================================\n\n'
}

{
  printf 'COZINHA LUCRATIVA — CONTEXTO COMPLETO\n'
  printf 'Gerado em %s a partir do repositório paulodick/cozinhalucrativa.\n' "$(date +%Y-%m-%d)"

  secao "MASTER_CONTEXT_CLAUDE_COZINHA_LUCRATIVA.md"
  cat "$RAIZ/MASTER_CONTEXT_CLAUDE_COZINHA_LUCRATIVA.md"

  # A seção final de Denise.md foi escrita para outra ferramenta;
  # as instruções de sistema do AI Studio substituem essa parte.
  secao "Denise.md"
  sed '/^## .*Instruções para o ChatGPT/,$d' "$RAIZ/Denise.md"

  secao "MDs/COZINHA_LUCRATIVA/README.md"
  cat "$MODULOS/README.md"

  for m in "$MODULOS"/MODULO_*.md; do
    secao "MDs/COZINHA_LUCRATIVA/$(basename "$m")"
    cat "$m"
  done
} > "$SAIDA"

echo "Pacote gerado: $SAIDA"
