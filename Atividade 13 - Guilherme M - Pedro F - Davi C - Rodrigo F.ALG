Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 10/07/202
Var
   // Se��o de Declara��es das vari�veis
   opcaoCompra, opcaoAnimal, opcaoIdade, opcaoParcela, opcaoRepita: inteiro
   quantidade, tempoD, qtdParcela: inteiro
   precoUnit, precoAluguel, precoTotal, precoFinal: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("SISTEMA DE FAZENDA")
   escreval("O que voc� deseja fazer?")
   escreval("[1] Comprar")
   escreval("[2] Alugar")
   leia(opcaoCompra)

   repita // Esse repita serve para permitir mais compras de uma vez

      escreval("Qual animal voc� deseja?")
      escreval("[1] Boi")
      escreval("[2] Vaca")
      escreval("[3] Cavalo")
      escreval("[4] �gua")
      escreval("[5] Porco")
      escreval("[6] Porca")
      escreval("[7] Pato")
      escreval("[8] Pata")
      escreval("[9] Galinha")
      escreval("[10] Galo")
      escreval("[11] Cabra")
      escreval("[12] Bode")
      escreval("[13] Ovelha")
      escreval("[14] Carneiro")
      escreval("[15] Marreco")
      escreval("[16] Marreca")
      escreval("[17] Coelho")
      escreval("[18] Coelha")
      escreval("[19] Codorna F�mea")
      escreval("[20] Codorna Macho")
      
      opcaoAnimal <- 0
      repita //Esse repita serve para o caso de for digitado um numero de animal errado
         leia(opcaoAnimal)
      ate (opcaoAnimal > 0) e (opcaoAnimal < 21)
      
      se opcaoCompra = 1 entao
         escreval("Voc� deseja o animal adulto ou filhote?")
         escreval("[1] Adulto")
         escreval("[2] Filhote (30% mais caro)")
         leia(opcaoIdade)
      fimse

      escolha opcaoAnimal
      caso 1
         precoUnit <- 6000.00
         precoAluguel <- 90.00
      caso 2
         precoUnit <- 3200.00
         precoAluguel <- 2.50
      caso 3
         precoUnit <- 18000.00
         precoAluguel <- 30.00
      caso 4
         precoUnit <- 12000.00
         precoAluguel <- 36.00
      caso 5
         precoUnit <- 1200.00
         precoAluguel <- 12.00
      caso 6
         precoUnit <- 1000.00
         precoAluguel <- 14.40
      caso 7
         precoUnit <- 60.00
         precoAluguel <- 0.50
      caso 8
         precoUnit <- 70.00
         precoAluguel <- 1.00
      caso 9
         precoUnit <- 40.00
         precoAluguel <- 6.30
      caso 10
         precoUnit <- 65.00
         precoAluguel <- 5.00
      caso 11
         precoUnit <- 1000.00
         precoAluguel <- 2.70
      caso 12
         precoUnit <- 2200.00
         precoAluguel <- 0.50
      caso 13
         precoUnit <- 3000.00
         precoAluguel <- 8.30
      caso 14
         precoUnit <- 3000.00
         precoAluguel <- 8.30
      caso 15
         precoUnit <- 50.00
         precoAluguel <- 0.13
      caso 16
         precoUnit <- 50.00
         precoAluguel <- 0.13
      caso 17
         precoUnit <- 230.00
         precoAluguel <- 0.63
      caso 18
         precoUnit <- 230.00
         precoAluguel <- 0.63
      caso 19
         precoUnit <- 15.00
         precoAluguel <- 0.50
      caso 20
         precoUnit <- 15.00
         precoAluguel <- 0.50
      fimescolha

      escreval("Digite a quantidade desejada")
      leia(quantidade)

      se opcaoCompra = 1 entao
         se opcaoIdade = 2 entao
            precoTotal <- precoUnit + (precoUnit * 0.3)
         senao
            precoTotal <- precoUnit
         fimse
         precoTotal <- precoTotal * quantidade
      senao
         escreval("Digite a quantidade de dias para ser alugado")
         leia(tempoD)
         precoTotal <- precoAluguel * tempoD * quantidade
      fimse

      precoFinal <- precoTotal + precoFinal
      escreval("O pre�o total desse produto � R$", precoTotal, ", Deseja comprar/alugar mais produtos?")
      escreval("[1] Sim")
      escreval("[2] N�o")
      leia(opcaoRepita)
   ate opcaoRepita = 2 // Esse repita serve para permitir mais compras

   escreval("O valor a ser pago ser� R$", precoFinal, ". Deseja parcelar a compra?")
   escreval("[1] Sim")
   escreval("[2] N�o")
   leia(opcaoParcela)
   se opcaoParcela = 1 entao
      repita // Esse repita serve para o caso de ser digitado um numero de parcelas invalido
         escreval("Em quantas vezes voc� quer parcelar? (Max. 12)")
         leia(qtdParcela)
      ate ((qtdParcela > 1) e (qtdParcela <= 12))
      escreval("Voc� vai pagar ", qtdParcela, " parcelas de R$", precoFinal/qtdParcela)


   fimse
   escreval("Obrigado e volte sempre!")

Fimalgoritmo