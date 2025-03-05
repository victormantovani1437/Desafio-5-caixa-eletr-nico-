programa
{
	
   	real saldo = 150.00

	funcao inicio() {

          caracter nome[50], sobrenome[50]
		inteiro opcao 

	     escreva("Digite seu nome: ")
	     leia(nome) 
	     escreva("Digite o seu sobrenome: ")
	     leia(sobrenome)

	     escreva("Boas vindas " ,nome, " " ,sobrenome, " é um prazer tê-lo conosco, agora escolha uma das opções abaixo") 
	     
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Fazer depósito\n")
		escreva("3. Fazer saque\n")
		escreva("4. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    	escolha (opcao) {

        caso 1: 
           verSaldo()
           pare 
           caso 2: 
           fazerDeposito()
           pare
           caso 3:
           fazerSaque()
           caso 4: 
           sair()
      }

	}

	funcao verSaldo(){
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    inicio()
	}
	
	funcao fazerDeposito() {

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	        escreva("Por favor, informe um número válido.\n")
	        fazerSaque()
	} senao se (saque > saldo) { 
    escreva ("Operação não autorizada, saque um valor que exista na conta!\n")
    fazerSaque()
      } 
    senao {
			saldo = saldo - saque
			verSaldo()
		}
	}

	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}

	funcao sair(){
		escreva("Programa encerrado")
	}
}
