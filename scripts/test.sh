#!/bin/bash
set -e
echo "[TEST] Verificando a aplicacao..."

# Verificando a existência do arquivo
if [ ! -f ~/meu-projeto-devops/app/index.html ]; then 
    echo "[TEST] FALHOU - index.html nao existe!"
    exit 1    
fi

#Verificando o conteudo do arquivo
if grep -q "Bootcamp DevOps" ~/meu-projeto-devops/app/index.html; then
    echo "[TEST] OK - conteudo esperado encontrado."
else
    echo "[TEST] FALHOU - conteudo esperado nao encontrado!"
    exit 1
fi
