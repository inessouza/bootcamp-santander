Algoritmo "Media"
//  Exerc�cio M�dia de Vendas
Var

    janeiro, fevereiro, marco, abril, media : real
    vendedor : caractere

Inicio
     escreva("Digite o nome do vendedor: ")
     leia(vendedor)
     
     escreva("Digite o valor de vendas do m�s de Janeiro: ")
     leia(janeiro)
     
     escreva("Digite o valor de vendas do m�s de Fevereiro: ")
     leia(fevereiro)
     
     escreva("Digite o valor de vendas do m�s de Mar�o: ")
     leia(marco)
     
     escreva("Digite o valor de vendas do m�s de Abril: ")
     leia(abril)
     
     media <- (janeiro + fevereiro + marco + abril) / 4
     
     escreva("A m�dia de vendas do vendedor ", vendedor, " �: ", media)
     
Fimalgoritmo