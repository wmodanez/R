# Instalando os principais pacotes para um uso básico da Linguagem R

#install.packages("memisc")
library(memisc)
#install.packages("descr")
library(descr)
#install.packages("gdata")
library(gdata)
#install.packages("igraph")
library(igraph)
#install.packages("maptools") #funcionou!!!
library(maptools)
#install.packages("ggplot2")
library(ggplot2)
#install.packages("knitr")
library(knitr)
#install.packages("rgdal")
library(rgdal)
#Não preciso o install.packages("datasets") porque integra o System Library
library(datasets)
#install.packages("data.table")
library(data.table)
#install.packages("sqldf")
library(sqldf)
#install.packages("markdown")
library(markdown)
install.packages("viridis")
library(viridis)

getwd()
setwd("C:/Users/cleuler-bn/Documents/R_CS")
#Apagar todos os objetos da memoria - reset da Environment Area
rm(list=ls())

linear <- function(a, b, x) # Início da definição da função linear (reta) num plano cartesiano y = a.x + b
  # a = parâmetro que indica o coeficiente angular da reta
  # b = parâmetro que indica o coeficiente linear  da reta
  # x = parâmetro que indica o conjunto de valores em a função será aplicada
{
  y<- a * x + b
  y
} #################  Final da definição da função linear, que retorna o valor de y=x, se x é um vetor ou matriz real

# Invocando a função linear para uma <var> <vector> <num>
a<-1
b<-0        # Replica a função identidade 
x<--1:10
linear(a,b,x)

a<-1/2
b<-0
x<-c(1,2,3)
linear(a,b,x)

a<-1+1/2
b<-0
x<-c(1,2,3)
linear(a,b,x)

a<-1/2
b<-2
x<-c(1,2,3,4,5)
linear(a,b,x)

####################################################################################################################
# TENTATIVAS E  ERROS PARA GERAR UM GRÁFICO y=f(x)=a.x + b #
####################################################################################################################

a<-1/2
b<-2
x<-c(1,2,3,4,5)
y<-linear(a,b,x)

x
y

plot(x,y)
plot(x,y, xlim=)
library(graphics)
#plot.new()
abline(x[1],y[1],x[5],y[5]) ? O que isso produz??
abline(b,a,untf = FALSE)
plot.new()

