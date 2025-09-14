#!/bin/bash

# Arquivo final
OUTPUT="historico_ultima_semana.txt"
> "$OUTPUT"

# Loop pelos últimos 7 dias
for i in {0..6}; do
  DATA=$(date --date="$i days ago" +%F)
  echo "=== Comandos do dia $DATA ===" >> "$OUTPUT"
  history | grep "$DATA" >> "$OUTPUT"
  echo -e "\n" >> "$OUTPUT"
done

echo "Histórico salvo em $OUTPUT"
