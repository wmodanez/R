# As funções lines() e abline() não estão funcionando dentro do RMarkdown

library(descr)
library(stats)
library(graphics)
getwd()

#Script desenvolvido para criar graficos
#Criar função da equação da reta > y = ax+b
#------------------Parametros------------------
#     a = Coeficiente linear
#     b = Coeficiente Angular
#     x = Vetor de valores no Eixo X
#     y = Vetor de valores no Eixo Y

#Cria funcao que representa a equacao da reta
linear <- function(a,b,x){
  y <- a*x + b
  return(y)
}

a <- 1.5 #Coeficiente linear
b <- 0.5 #Coeficiente angular

x <- 1:10 #Vetor de valores do Eixo X

y <- linear(a,b,x) # é preciso repassar os parâmetros dos argumentos a e b da função

print(y) #Mostrar os valores do Eixo Y

#Parametros do plot
#     main = Titulo do grafico
#     ylab = Nome do Eixo Y
#     xlab = Nome do Eixo X
#     type = Tipo de plotagem > l = linha,p = pontos, h = histograma
plot(x,y,main='Gráfico Curso R',ylab='Eixo y',xlab='Eixo x',type='o')

########### Redesenhando outro gráfico do exerício 9 da aula n. 1
a <- 1.0 #Coeficiente linear
b <- 0.0 #Coeficiente angular

x <- 0:10 #Vetor de valores do Eixo X

y <- linear(a,b,x) # é preciso repassar os parâmetros dos argumentos a e b da função

print(y) #Mostrar os valores do Eixo Y
plot(x,y,xlim=c(0,10),ylim=c(0,10),main='Gráfico Curso R',ylab='y',xlab='x',type='o')

y1 <- linear(2,0,x)
y2 <- linear(0.5,0,x)
plot(x,y1,xlim=c(0,10),ylim=c(0,20),main='Gráfico Curso R',ylab='y1',xlab='x',type='o')
plot(x,y2,xlim=c(0,10),ylim=c(0,10),main='Gráfico Curso R',ylab='y2',xlab='x',type='o')

plot.new()
plot(x,y,xlim=c(0,10),ylim=c(0,20),main='Gráfico Curso R',ylab='y',xlab='x',type='o')
lines(x,y1, col="blue")
lines(x,y2, col="red")

plot.new()
plot(x,y,xlim=c(0,10),ylim=c(0,20),main='Gráfico Curso R',ylab='y',xlab='x',type='o')
abline(a = 0, b = 2  , col = "green", untf = FALSE)
abline(a = 0, b = 0.5, col = "yellow", untf = FALSE)

plot.new()
plot(x,y,xlim=c(0,20),ylim=c(0,20),main='Gráfico Curso R',ylab='y',xlab='x',type='o')
abline(a = 0, b = 2  , col = "green", untf = FALSE)
abline(a = 0, b = 0.5, col = "yellow", untf = FALSE)

