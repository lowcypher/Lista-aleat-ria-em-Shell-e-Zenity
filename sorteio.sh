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

cat $arquivo | sort -R | head -$numero | zenity --text-info --auto-scroll --width=500 --height=500
