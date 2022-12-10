# Verificar quantidade de arquivos, excluir o arquivo que estiver acima da contagem

#! /bin/sh
# entra no diretorio
cd /DIRETORIO/arquinoX
# variavel cont recebe 0
COUNT=0
# para variavel i em na listagem com ls -ST faça
for i in `ls -St`; do
# contagem recebe contagem mais 1 para cada for
        let COUNT=COUNT+1;
# se o contador for maior ou igual a 9 no caso
        if [[ "$COUNT" -ge "9" ]]; then
# exclua os arquivos que estiverem acima do definido que acima ou igual a 9, sempre vai sobrar 8 arquivos
                rm -rf $i
        fi

done
cd /DIRETORIO/arquinoX
COUNT=0
for i in `ls -St`; do
        let COUNT=COUNT+1;
        if [[ "$COUNT" -ge "15" ]]; then
                rm -rf $i
        fi

done
