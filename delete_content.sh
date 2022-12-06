echo "Script para remoção de conteudo!"

START_DATE="$(date -u +%s)"
echo "Inicio: $(date)"

sudo rm -rf /CONTEUDO

END_DATE="$(date -u +%s)"
echo "Fim: $(date)"
