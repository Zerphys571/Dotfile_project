#!/bin/bash
# ==============================================================================
# SCRIPT BUSCAR E VERIFICAR QUAL APLICATIVO ABRIR EXTENSOES ESPECIFICAS
# ==============================================================================

#-------Preparação--------
ARQUIVO="${1}"
EXTENSAO="${ARQUIVO##*.}"
EXTENSAO="${EXTENSAO,,}"

#Utiliza a funcao case para verificar as extensoes dos arquivos
case "${EXTENSAO}" in
c | cpp | py | conf | rasi | json | ino | css | sh | ini)
    zeditor "${ARQUIVO}" &
    ;;
mp4 | png | jpg | jpeg | gif)
    mpv "${ARQUIVO}" &
    ;;
*)
    nautilus "${HOME}/${ARQUIVO}" &
    ;;
esac
