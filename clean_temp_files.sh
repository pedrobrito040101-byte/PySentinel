#!/bin/bash
# clean_temp_files.sh
# Descrição: Verifica o uso de disco e remove arquivos temporários em sistemas Linux.
# Autor: Pedro Henrique de Brito
# Data: 05/03/2026

echo "Verificando uso de disco..."
df -h

echo "Removendo arquivos temporários..."

# Exemplo: Remover arquivos com mais de 7 dias em /tmp
find /tmp -type f -atime +7 -delete

# Exemplo: Limpar cache do apt (para sistemas baseados em Debian/Ubuntu)
if command -v apt &> /dev/null
then
    sudo apt clean
    echo "Cache do APT limpo."
fi

echo "Limpeza de arquivos temporários concluída."
