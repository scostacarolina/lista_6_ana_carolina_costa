#################### ANALISE DE DADOS ####################
############## ANA CAROLINA DO SANTOS COSTA ##############
######################## LISTA 06 ########################

#### LINK PARA O GITHUB #####
# https://github.com/scostacarolina/lista_6_ana_carolina_costa.git



#### EXERCICIO 01 ####

## Descreva os conceitos abaixo: ##

## a) Variavel dependente ##
## Variaveis dependentes sao apenas medidas ou registradas, em um experimento sao
## as variaveis que esperamos variaveis sejam "dependentes" da manipulacao ou das
## condicoes experimentais. Ou seja, elas dependem "do que os sujeitos", ou as 
##  variaveis independentes  farao em resposta. 

## b) Variavel independente ##
## Variavel independente e a causa, o antecedente, e a origem de um fenomeno, 
## um processo que constitui o objeto de estudo. sao as variaveis que  num 
## experimento sao manipuladas, ou seja, sao "independentes" dos padroes de reacao 
## inicial. 

## c) Apresente qual a relação existente entre variaveis independentes ##
## e dependente: ## 

## Espera-se que outras variaveis sejam "dependentes" da manipulacao ou das 
## condicoes experimentais. Ou seja, elas dependem "do que os sujeitos farao" 
## em resposta. Ha uma relacao de causalidade entre os dois tipos de variaveis. 

#### EXERCICIO 02 #### 

## Em analise de dados, qual o nome dado a equacao mostrada na lista 06? ##

## Trata-se de um modelo de regressao bivariado.
## Y? -> trata-se do valor observado da variavel dependente
## alfa -> trata-se do parametro do intercepto estimado
## beta -> trata-se do  coeficiente de varia?ao 
## Xi -> trata-se do  valor observado da variavel independente
## mi -> trata-se do componente estocastico ou erro amostral

#### EXERCICIO 03 ####
## Com suas palavras, apresente uma definicao para cada um dos componentes 
## da equacao apresentada no exercicio 2.

## Y? -> e a Variavel explicada (a variavel dependente), 
## representa o que o modelo tentara prever.
## alfa -> E uma constante,representa a interceptacao da reta com o eixo vertical
## beta -> Representa a inclinacao ou o coeficiente angular em relacao a variavel
## independente
## Xi -> e a variavel explicativa, e o que da sentido a equacao, sem ela nao 
## ha efeitos sobre a variavel que queremos explicar. 
## mi -> representa todos os residuos da equacao mais os possiveis erros de medicao
## representa todos aqueles componentes que nao conseguimos explicar numa relacao
## causal. apresenta um comportamento aleatorio. 

#### EXERCICIO 04 ####

## Apresente o componente sistematico da equacao apresentada no exercicio 2. 
## Descreva por que e sistematico.

## o componente sistematico e a parte da equacao composta por Y?, alfa, beta e Xi
## pode-se dizer que e a parte do experimento que o cientista tem controle sobre.
## Aqui as relacoes entre as variaveis conseguem ser defininidas e explicadas. 
## e onde de fato conseguimos observar a relacao de causalidade entre as variaveis

#### EXERCICIO 05 ####

## Apresente o componente estocastico da equacao apresentada no exercicio 2.
## Descreva por que e estocastico. 

## o componente estocastico e a parte da equacao composta po mi, 
## representa a aleatoriadade do comportamento humano que a ciencia nao consegue
## explicar, tambem pode representar o residuo a realidade social e a mensuracao
## da realidade social, de toda forma, representa a parte do modelo ou experimento
## que nao esta passivel de controle. 


#### EXERCICIO 06 ####

## Descreva a diferenca entre Y? e ^Y?. Qual a relacao desses dois componentes com 
## mi?

## como j? dito Y? e a variavel dependente explicada, enquanto ^Y? ? o valor 
## predito de Y?. A presenca do chapeu (^) significa que os valores dessas 
## variaveis foram retirados de amostras populacionais, enquanto que sem o chapeu
## significa que o valor foi tirado de um dado populacional completo.
## a presenca do chapeu e mais comum, pois dificilmente cientistas sociais
## conseguem trabalhar com o todo populacional. Quando ha a presen?a de valores 
## amostrais, comumente trabalhamos com um risco maior de residuo amostral (mi)




#### EXERCICIO 07 ####


## Com suas palavras, apresente o que e o modelo OLS e seu principal uso 
## na analise de dados. 

## O modelo Ordinary Least Squares ou Minimos Quadrados Ordinarios e uma tecnica
## de otimiza??o matematica que procura encontrar o melhor ajuste para uma 
## regressao tentando minimizar a soma dos quadrados das residuos amostrais
## (ou populacionais) entre o valor estimado e os dados observados. 
## O modelo OLS fornece estimativas mais precisas e nao viciadas. 
#### EXERCICIO 08 ####

## Com base no Google's R Style Guide, apresente exemplos de boas praticas para
## os seguintes topicos:

## a) nomes de arquivos: 
## Os nomes dos arquivos devem terminar em ".r" e devem ser praticos e concisos
## para voca saber de cara a funcao desse arquivo
## um bom exemplo: "banco_pnud_final_filtro_pe.r"
## um p?ssimo exemplo: "banco_finalagoravai.r"


## b) Identificadores: 
## Tente nao utilizar o underline"_" ou hifen "-" ao nomear suas variaveis.
## de preferencia utilize apenas letras minusculas. Tente ser conciso.
## um bom exemplo: "matriculas.pe"
## p?ssimo exemplo: "Matriculas_PE-PNUD"

## c) identificacao;
## Ao recuar seu codigo, use dois espacos. Nunca use tabulacoes ou misture 
## tabulacoes e espacos. 

## um bom exemplo:
setwd("C:/Users/Carol/Desktop/cadeiras-mestrado/an?lise de dados - davi moreira/aula 02 do R")
load("turmas_pe_censo_escolar_2016.RData")
require(tidyverse)
turmas_pe_sel <- turmas_pe %>% group_by(CO_MUNICIPIO) %>%
summarise(n_turmas = n(), 
          turmas_disc_prof = sum(IN_DISC_PROFISSIONALIZANTE, na.rm = T),
          turmas_disc_inf = sum(IN_DISC_INFORMATICA_COMPUTACAO, na.rm = T),
          turmas_disc_mat = sum(IN_DISC_MATEMATICA, na.rm = T),
          turmas_disc_pt = sum(IN_DISC_LINGUA_PORTUGUESA, na.rm = T),
          turmas_disc_en = sum(IN_DISC_LINGUA_INGLES, na.rm = T))

 

## d) espacamento;
## Coloque espacos ao redor de todos os operadores binarios (=, +, -, <-, etc.).
## Excecao: Espacos ao redor de "=" sao opcionais ao passar parametros em uma 
## chamada de funcao.
## Nao coloque um espaco antes de uma virgula, mas sempre coloque um espaco
## apos uma virgula.
 
## Um bom exemplo: 
 pnud.pe.2010 <- pnud %>% filter(ANO == 2010 & UF == 26)
 
## um pessimo exemplo: 
 pnud_pe_2010<-pnud %>% filter(ANO==2010 & UF==26)
 

## e) Designacao;
 ## Use <- para designar uma funcao, variavel ou rotulo, evite ao maximo usar =

## um bom exemplo: 
 albuns.ladygaga <- 5

## um pessimo exemplo:
Albuns_Lady_Gaga = 5 


## f) Comentando Diretrizes;

## ao comentar seu codigo utilize um "#" e um espaco para grandes comentarios e
## ut?lize "##" ap?s um c?digo para fazer um comentario curto. 

## Um bom exemplo:
# aqui iremos inserir um grande comentario, porem as linhas nao devem ser
# maiores que 80 caracteres. entao iremos continuar fazendo a quebra utilizando
# apenas um "#" em cada linha ate terminar o comentario

albuns.ladygaga <- 5 ## aqui comentamos rapidamente

## um pessimo exemplo:

## a forma como vinha comentando o script ate agora, utilizando dois "#" em cada
## linha sempre. Nao ha necessidade. Perdemos muito espaco fazendo assim.
## Faca o que eu digo mas nao faca o que eu faco.


# g) Definicoes de funcoes e chamadas;
# As definicoes de funcao devem primeiro listar os argumentos sem valores
# padrao, seguidos daqueles com valores padrao.

# h) documenta??o da funcao;
# e interessante que haja comentarios logo apos o comando da fun??o, explicando
# o que acabou de acontecer, os comentarios devem ser concisos e explicativos. 


#### EXERCICIO 09 ####

# Leia o Capitulo 7 do livro R para Ciencia de Dados e entregue script no R 
# que reproduza os exemplos apresentados no capitulo. Comente seu codigo 
# indicando o que esta para ser realizado em cada etapa do seu script. 

# SOLICITANDO TODOS OS PACOTES NECESSARIOS 
install.packages("hexbin")
install.packages("modelr")

require(ggplot2)
require(nycflights13)
require(tidyverse)

####  Exemplos CAP 7.3.1 ####
# CONHECER BASE DE DADOS

view(diamonds)

# VISUALIZANDO DISTRIBUICOES CATEGORICAS

# SOLICITANDO GRAFICO QUE AJUDA A VISUALIZAR DISTRIBUICOES POR CORTES DE DIAMANTES

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

diamonds %>% 
  count(cut) ## solicitando os dados manualmente com a funcao dplyr::count()

# DISTRIBUICAO POR COR DE DIAMANTES
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color))

diamonds %>% 
  count(color) ## ## solicitando os dados manualmente com a funcao dplyr::count()

# VISUALIZANDO DISTRIBUICOES CONTINUAS
# Distribuicao de diamantes por quilates

ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)

diamonds %>% 
  count(cut_width(carat, 0.5)) ## solicitando manualmente

# filtrando diamantes menores de 3 quilates

smaller <- diamonds %>% 
  filter(carat < 3) ## criando nova base de dados

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.1) ## solicitando novo gr?fico

# Solicitando multiplos histogramas em um grafico 
# Comparacao entre quilates e cortes de diamantes
# utilizamos nova funcao geom_freqpoly()

ggplot(data = smaller, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

# Distribuicao de diamantes por Profundidade
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = depth), binwidth = 0.5)

diamonds %>% 
  count(cut_width(depth, 2)) ## solicitando manualmente

# filtrando diamantes com profundidade menor de 60.

menor.profundidade <- diamonds %>% 
  filter(depth < 60) ## criando nova base de dados

ggplot(data = menor.profundidade, mapping = aes(x = depth)) +
  geom_histogram(binwidth = 1) ## solicitando novo gr?fico

# Solicitando multiplos histogramas em um grafico 
# Comparacao entre profundidade e cortes de diamantes
# utilizamos nova funcao geom_freqpoly()

ggplot(data = menor.profundidade, mapping = aes(x = depth, colour = cut)) +
  geom_freqpoly(binwidth = 0.25)


####  Exemplos CAP 7.3.2 ####
# Distribuicao de diamantes por quilates
# Observando pico na distribuicao de diamantes por quilates

ggplot(data = smaller, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.01)


# Distribuicao de diamantes por Profundidade
# Observando pico na distribuicao de diamantes por profundidade

ggplot(data = menor.profundidade, mapping = aes(x = depth)) +
  geom_histogram(binwidth = 0.75)


# OBSERVANDO FORMACAO DE CONGLOMERADOS EM NOVA BASE DE DADOS
#Conhecendo nova base de dados
view(faithful)
dim(faithful)

# Solicitar gr?fico para observar formacao de conglomerados

ggplot(data = faithful, mapping = aes(x = eruptions)) + 
  geom_histogram(binwidth = 0.25)

####  Exemplos CAP 7.3.3 ####

# OBSERVANDO OUTLIERS

# retornando a base sobre diamantes
dim(diamonds)

# solicitando grafico de visao geral

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)

# utilizar funcao de zoom que facilita a observacao de outliers

ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50)) ## essa linha representa a nova funcao

# Usando o dplyr para visualizar e juntar os outliers

unusual <- diamonds %>% 
  filter(y < 3 | y > 20) %>% 
  select(price, x, y, z) %>%
  arrange(y)

####  Exemplos CAP 7.4 ####

# Quando encontramos outliers em nossos dados podemos agir para remove-los da 
# nossa base. Existem duas maneiras:

# 1. remover as linhas completamente, da forma abaixo:

diamonds2.1 <- diamonds %>% 
  filter(between(y, 3, 20))

# 2. Subistituir os outlier por espacos sem informa??o:

diamonds2.2 <- diamonds %>% 
  mutate(y = ifelse(y < 3 | y > 20, NA, y))

# se fizermos da primeira maneira, acabamos por perder muitas informa??es

# Observe o grafico do exemplo 1

ggplot(data = diamonds2.1, mapping = aes(x = x, y = y)) + 
  geom_point()

# Perdemos 9 linhas completas de dados

# Observe o grafico do exemplo 2

ggplot(data = diamonds2.2, mapping = aes(x = x, y = y)) + 
  geom_point(na.rm = TRUE)

# Quando voce quiser que os valores em branco aparecam em seu grafico,
# voce pode usar a funcao nycflights13::

# Aqui o exemplo e com uma base de dados sobre voos

nycflights13::flights %>% 
  mutate(
    cancelled = is.na(dep_time),
    sched_hour = sched_dep_time %/% 100,
    sched_min = sched_dep_time %% 100,
    sched_dep_time = sched_hour + sched_min / 60
  ) %>% 
  ggplot(mapping = aes(sched_dep_time)) + 
  geom_freqpoly(mapping = aes(colour = cancelled), binwidth = 1/4)

# observe que podemos comparar a quantidade de voos feitos em relacao a
# quantidade de voos cancelados
####  Exemplos CAP 7.5.1 ####
# Covariancia 

# Variavel categorica e continua 
# e mais dificil visualisar a diferen?a na distribuicao pois as contagens gerais 
# sao muito diferentes: 

# grafico sobre corte e preco
ggplot(data = diamonds, mapping = aes(x = price)) + 
  geom_freqpoly(mapping = aes(colour = cut), binwidth = 500)

# grafico sobre distribuicao do corte na populacao
ggplot(diamonds) + 
  geom_bar(mapping = aes(x = cut))

# Para facilitar a comparacao, precisamos trocar o que e mostrado no eixo y. 
# Em vez de exibir a contagem, exibiremos densidade, que e a contagem 
# padronizada para que a area sob cada poligono de frequencia seja uma.

ggplot(data = diamonds, mapping = aes(x = price, y = ..density..)) + 
  geom_freqpoly(mapping = aes(colour = cut), binwidth = 500)


# grafico de distribuicao de preco por corte usando geom_boxplot ():

ggplot(data = diamonds, mapping = aes(x = cut, y = price)) +
  geom_boxplot()

# variavel class na base de dados mpg

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) +
  geom_boxplot()

# reordenando class com base no valor mediano de hwy:

ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = reorder(class, hwy, FUN = median), y = hwy))

# nas variaveis com nomes longos, geom_boxplot () funciona melhor
# girando 90 graus

ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = reorder(class, hwy, FUN = median), y = hwy)) +
  coord_flip()  ## coord_flip() e a funcao que permite girar o grafico
####  Exemplos CAP 7.5.2 ####
# Duas variaveis categoricas 
# Para visualizar a covariancia entre 2 variaveis categoricas e preciso 
# contar o numero de observacoes para cada combinacao. Uma forma de fazer isso 
# ? usando a funcao geom_count():

ggplot(data = diamonds) +
  geom_count(mapping = aes(x = cut, y = color))

# outra forma ? usando a funcao dplyr para visualisar manualmente

diamonds %>% 
  count(color, cut)

# visualizando com geom_tile () e a estetica de preenchimento:
# basicamente unimos os dois comandos

diamonds %>% 
  count(color, cut) %>%  
  ggplot(mapping = aes(x = color, y = cut)) +
  geom_tile(mapping = aes(fill = n)) ## basicamente unimos os dois comandos


####  Exemplos CAP 7.5.3 ####

# Observando duas variaveis continuas usando a funcao geom_point()

ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price))

# usando a estetica alfa para adicionar transparencia.

ggplot(data = diamonds) + 
  geom_point(mapping = aes(x = carat, y = price), alpha = 1 / 100)

# novo comando acrescentado =  alpha = 1 / 100)

# usando geom_bin2d () e geom_hex () para dividir as coordenadas em bins 2d

ggplot(data = smaller) +
  geom_bin2d(mapping = aes(x = carat, y = price))

ggplot(data = smaller) +
  geom_hex(mapping = aes(x = carat, y = price))

# Usando boxplot 

ggplot(data = smaller, mapping = aes(x = carat, y = price)) + 
  geom_boxplot(mapping = aes(group = cut_width(carat, 0.1)))

# Usando cut_number() para exibir aproximadamente o mesmo 
# numero de pontos em cada caixa.

ggplot(data = smaller, mapping = aes(x = carat, y = price)) + 
  geom_boxplot(mapping = aes(group = cut_number(carat, 20)))

# A grande sacada ? que graficos bidimensionais revelam outliers que nao sao 
# visiveis em parcelas unidimensionais. Observe:

ggplot(data = diamonds) +
  geom_point(mapping = aes(x = x, y = y)) +
  coord_cartesian(xlim = c(4, 11), ylim = c(4, 11))

####  Exemplos CAP 7.6 ####

# Padroes nos fornecem pistas sobre relacionamentos das variaveis no banco.

# Retornando a base de dados sobre vulcoes, podemos utilizar graficos de 
# dispersao para observar padroes de comportamento

ggplot(data = faithful) + 
  geom_point(mapping = aes(x = eruptions, y = waiting))

# podemos usar o pacote modelr para extrair padroes dos dados

# Vamos retornar agora para a base de diamantes

library(modelr)

mod <- lm(log(price) ~ log(carat), data = diamonds)

diamonds2.6 <- diamonds %>% 
  add_residuals(mod) %>% 
  mutate(resid = exp(resid))

ggplot(data = diamonds2.6) + 
  geom_point(mapping = aes(x = carat, y = resid))

# O codigo se ajustou a um modelo que preve preco de quilate e, em seguida, 
# calcula os residuos. Os residuos nos dao uma visao do preco do diamante,
# uma vez que o efeito do quilate foi removido

# Agora vamos observar o gr?fico desse novo modelo

ggplot(data = diamonds2.6) + 
  geom_boxplot(mapping = aes(x = cut, y = resid))


####  Exemplos CAP 7.7 ####

# Existem formas mais pr?ticas de chamar os comandos e funcoes. Por exemplo

# com o tempo, ao inves de solicitar o comando assim:

ggplot(data = faithful, mapping = aes(x = eruptions)) + 
  geom_freqpoly(binwidth = 0.25) ## exemplo 1

# podemos chamar o grafico assim:
ggplot(faithful, aes(eruptions)) + 
  geom_freqpoly(binwidth = 0.25) ## exemplo 2


#### EXERCICIO 10 ####
# Com os dados disponibilizados na plataforma, reproduza os resultados do 
# livro de Kellstedt (2013) utilizando o codigo apresentado nos slides da aula.

# selecionando diretorio 
setwd("C:/Users/Carol/Desktop/cadeiras-mestrado/an?lise de dados - davi moreira/listas/lista 05")

# carregar arquivo
load("vote_growth_usa.Rdata")
# modelo de regressao bivariada : estimando o modelo
reg.10 <- lm(Vote ~ Growth, data = bd)

summary(reg.10)
confint(reg.10)

#### EXERCICIO 11 ####
# Com os dados e as variaveis do exercicio 10, realize uma analise de regressao
# considerando apenas o periodo de 1876 a 1932. Apresente os resultados e os
# compare quanto ao modelo completo do exerc?cio 10 em rela??o a:

# a) Significancia estatistica dos resultados
# b) Intervalo de confian?a para beta 
# c) Medidas de ajuste do modelo

# solicitando base de dados
load("vote_growth_usa.Rdata")

# renomeando o rotulo
vote.growth <- bd

# filtrando para o periodo pedido
vote.growth.filtro <- vote.growth[1:15, c("Year","Growth","Vote")]

# solicitando nova regressao
reg.11 <- lm(Vote ~ Growth, data = vote.growth.filtro)

confint(reg.11)

summary(reg.11)

# Em relacao a significancia estatistica o modelo completo da questao 10
# apresenta um p valor menor que o do modelo filtrado entre os anos 1876-1932.
# Logo, o modelo da questao 11 e mais proximo do padrao estatistico de 0,5
# e moderadamente mais significativo estatisticamente. No entanto, todos os dois
# modelos estao dentro do intervalo do p-valor e sao significativos

# Em relacao ao intervalo de confianca o modelo completo da questao 10 
# apresenta uma amplitude de um intervalo de confianca menor que o 
# do modelo filtrado entre os anos 1876 - 1932

# Em relacao a medida de ajuste de modelo, no modelo completo da questao 10
# o valor do ajuste e de 0,31, enquanto no modelo filtrado, o valor do ajuste
# e de 0,23. No modelo da questao 10 o erro padrao foi estimado em 4,955. Ja
# no modelo filtrado estimado em 5,638. Como o erro padrao foi menor no modelo
# completo da questao 10, e preferivel usar este modelo para explicar a
# influencia do crescimento do economico no voto do partido da situacao. 
# filtrado. 

