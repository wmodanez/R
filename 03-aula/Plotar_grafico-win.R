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
x < 1:10 #Vetor de valores do Eixo X

y <- linear(x)

print(y) #Mostrar os valores do Eixo Y

#Parametros do plot
#     main = Titulo do grafico
#     ylab = Nome do Eixo Y
#     xlab = Nome do Eixo X
#     type = Tipo de plotagem > l = linha,p = pontos, h = histograma
plot(x,y,main='Gráfico Curso R',ylab='Eixo Y',xlab='Eixo X',type='o')


