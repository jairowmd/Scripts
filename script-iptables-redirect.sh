#!/bin/bash

# Comando iptables para redirecionamento de portas - 3000 para 80
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 3000

# Verifica se o comando iptables foi executado com sucesso
if [ $? -eq 0 ]; then
    echo "Regra redirecionamento de portas iptables adicionada com sucesso."
else
    echo "Ocorreu um erro ao adicionar a regra de redirecionamento do iptables."
fi

#  inserir no crontab -e vai subir com o SO ja com o encaminhamento de porta
#  @reboot /caminhoscript/script-iptables-redirect.sh
