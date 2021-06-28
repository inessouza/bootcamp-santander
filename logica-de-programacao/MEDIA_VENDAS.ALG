Algoritmo "Media"
//  Exercício Média de Vendas
Var

    janeiro, fevereiro, marco, abril, media : real
    vendedor : caractere

Inicio
     escreva("Digite o nome do vendedor: ")
     leia(vendedor)
     
     escreva("Digite o valor de vendas do mês de Janeiro: ")
     leia(janeiro)
     
     escreva("Digite o valor de vendas do mês de Fevereiro: ")
     leia(fevereiro)
     
     escreva("Digite o valor de vendas do mês de Março: ")
     leia(marco)
     
     escreva("Digite o valor de vendas do mês de Abril: ")
     leia(abril)
     
     media <- (janeiro + fevereiro + marco + abril) / 4
     
     escreva("A média de vendas do vendedor ", vendedor, " é: ", media)
     
Fimalgoritmo