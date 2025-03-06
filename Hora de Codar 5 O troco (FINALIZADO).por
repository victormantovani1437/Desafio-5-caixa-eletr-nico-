programa
{
	
   	real saldo = 300.00
    cadeia nome
	funcao inicio() {

          
		inteiro opcao 

	     escreva("Digite seu nome: ")
	     leia(nome) 
	     
	     escreva("Boas vindas, " ,nome, " é um prazer tê-lo conosco, agora escolha uma das opções abaixo") 
	     
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
    escreva("4. Fazer Deposito\n")
    escreva("5. Transferência\n ")
		escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    	escolha (opcao) {

        caso 1: 
           verSaldo()
           pare 
           caso 2: 
           VerExtrato()
           pare
           caso 3:
           fazerSaque()
           pare
           caso 4: 
           fazerDeposito()
           pare
           caso 5:
           transferencia()
           pare
           caso 6:
           sair()
           pare
      }

	}

	funcao verSaldo(){
    password()
	    escreva("Seu saldo atual é: ", saldo, "\n")
	
	}
	
	funcao fazerDeposito() {
  
     password()
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
	  
    password()
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

  funcao VerExtrato(){
    password()

      escreva(" Esse é o seu extrato nos últimos 10 dias: ")
      escreva("\n 28/02/2025 - MC Donald'sv - R$ 100,00\n")   
      escreva("\n 01/03/2025 - Tiffany - R$ 50.000,00\n")

    verSaldo()
    sair()

  }

  funcao transferencia(){
    
    password()
    real conta, valor, soma
    
    escreva("\nDigite o número da conta bancaria que deseja transferir: \n")
    leia(conta)

    escreva("\nQual o valor que deseja transferir para a conta " ,conta,"?: \n")
    leia(valor)
    
    se (valor > saldo){
        
        escreva("\nOperação não autorizada, por favor, informe um valor valido\n")
        transferencia()
      } senao se (valor <= 0){

        escreva("Operação invalida, informe um valor maior que R$ 0,00")
        transferencia()
      } senao {
      soma = saldo - valor
          
    escreva("Seu saldo atual é : " ,soma,"." )
      } 
     
        
  sair()
     
  }
   
  funcao password(){
    
    inteiro senha, tentativa

    senha = 3589
    
    escreva("\nDigite a senha para prosseguir: \n")
    leia(tentativa)
    
    se (tentativa != senha){
        escreva("\nSenha incorreta! Tente novamente.\n")
        password()  
    } senao{
        escreva("\nSenha correta! Acesso autorizado.\n")
    }
}
    
	funcao erro() {
		escreva("Opção Inválida")
		inicio()
	}

	funcao sair(){
    

		escreva("\n Foi um prazer tê-lo conosco " ,nome, "!")
	}
}