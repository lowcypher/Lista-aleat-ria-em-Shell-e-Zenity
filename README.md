# Lista aleatória em Shell e Zenity

Gerar um lista de itens aleatória com base em uma lista pré-definida.

Com base em um arquivo txt com nomes (organizado com um nome por linha, claro), o script lê o arquivo texto e gera uma outra lista na tela com as linhas ordenadas de forma aleatória.

Super básico e simples. Serve para uso em sorteios de brindes e outros. Pode-se limitar o resultado pela tela de número de itens a ser mostrado. Se caso não for passado nenhum parâmetro, o script retorna por padrão, 10 itens. 

Segue abaixo o código, em shell e Zenity.

#!/bin/bash
#
#Script simples em bash com zenity, para sorteio de nomes de uma lista em txt
#Seleciona arquivo organizado com nomes por linhas, embaralha o conteúdo de
#forma aleatória (randomica) e mostra na tela a quantidade de itens selecionados
#
#Autor: Mario Medeiros
#Nome Aplicação: Sorteio
#Nome Arquivo: sorteio.sh
#Data: 2018-10-04
#Versão: 1.0.0
#
#Dependências: Zenity
#
#########################################################################

arquivo=$(zenity --file-selection --title="Selecione Um Arquivo de Lista")

numero=$(zenity --entry --text="Digite O Número De Itens" --title="Número De Itens Da Lista")

cat $arquivo | sort -R | head -$numero | zenity --text-info --auto-scroll --width=500 –height=500
