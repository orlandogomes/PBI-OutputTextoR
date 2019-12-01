#Output de Texto com R Script Visual no Power BI

#Instalação Pacote
install.packages("gridExtra")
library("gridExtra")

#Plot - Consumo x Peso
plot(mpg~wt,data=mtcars, 
     main="Consumo x  - Veiculos", pch=19,
     xlab="Peso",ylab="Consumo")

#Exemplo I - Sumário Estatístico da Base
summary(mtcars)

#R Script Visual - Exemplo I
library("gridExtra")
data(mtcars)
grid.table(summary(mtcars))


#Exemplo II - Exibição Top 10 Registros
head(mtcars,n=10)

#R Script Visual - Exemplo II
library("gridExtra")
data(mtcars)
grid.table(head(mtcars,n=10))


#Exibição de Temas
tema_padrao <- ttheme_default()
tema_branco <- ttheme_minimal()
#Impressão de Dados 
grid.arrange(
  tableGrob(mtcars[1:10, 1:2], theme=tema_padrao),
  tableGrob(mtcars[1:10, 1:2], theme=tema_branco),
nrow=1)

