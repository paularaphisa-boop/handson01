programa
{
    funcao inicio()
    {
        inteiro op, es, banc
        inteiro numero, num1, num2, contador = 0, atual, anterior, n, i, categoria, soma = 0, positivos = 0, negativos = 0, zeros = 0
        real n1, n2, resultado, nota, saldo_disponivel, valor_saque, valor_deposito, saldo_inicial, saldo_saque, valor_compra, desconto, valor_final
        
        escreva("0. Sair\n1. Exercício 1\n2. Exercício 2\n3. Exercício 3\n4. Exercício 4\n5. Exercício 5\n6. Exercício 6\n7. Exercício 7\n8. Exercício 8\n9. Exercício 9\n10 Exercício 10\nOpção: ")
        leia(op)

        escolha (op) {
            caso 0: 
                escreva ("Sair")
                pare
            caso 1:
                escreva("Exercício 1\n")
                escreva ("Número: ")
                leia (numero)
                se (numero %2 == 0)
                escreva ("PAR")
                senao 
                escreva ("ÍMPAR")            
                pare
            caso 2:
                escreva("Exercício 2\n")
                escreva("Digite o primeiro número: ")
                leia(num1)
                escreva ("Digite o segundo número: ")
                leia(num2)
                se (num1 > num2)
                escreva ("O maior número é: ", num1)
                senao 
                se(num2 > num1)
                escreva ("O maior número é: ", num2)
                senao 
                escreva ("Iguais")
                pare
            caso 3:
                escreva ("Exercício 3\n")
                escreva ("1- Somar\n2- Subtrair\n3- Multiplicar\n4- Dividir\nEscolha uma opção: ")
                leia (es)
                
                escreva ("Escolha o primeiro número:")
                leia (n1)
                escreva ("Escolha o segundo número:")
                leia (n2)

                escolha (es) {
                  caso 1: resultado = (n1 + n2)
                  escreva ("Resultado: ", resultado)
                  pare
                  caso 2: resultado = (n1 - n2)
                  escreva ("Resultado: ", resultado)
                  pare
                  caso 3: resultado = (n1 * n2)
                  escreva ("Resultado: ", resultado)
                  pare
                  caso 4: 
                  se (n1 == 0 ou n2 == 0) 
                  escreva ("Erro: divisão por zero!")
                  senao
                  {resultado = (n1 / n2)              
                  escreva ("Resultado: ", resultado)}
                  pare
                }
                pare
            caso 4:
                escreva ("Exercício 4\n")
                escreva ("Digite uma nota (0 a 100): ")
                leia (nota)
                
                enquanto (nota <= 0 ou nota >= 100) {
                  contador = 0
                  escreva ("Nota inválida. Tente novamente.\n")
                  escreva ("Digite uma nota (0 a 100): ")
                  leia (nota)
                  }
                se (nota >= 0 ou nota <= 100)
                escreva ("Nota válida: ", nota)                   
                pare
            caso 5: 
                escreva ("Exercício 5\n")
                escreva ("Digite um número (Use 0 para interromper): ")
                leia (anterior) 
                enquanto (atual != 0 e anterior != 0) {
                escreva ("Digite outro número (Use 0 para interromper): ")
                leia (atual)
                se (atual > anterior)
                escreva ("Maior que o anterior\n")
                se (atual < anterior)
                escreva ("Menor que o anterior\n") }
                escreva ("Programa pausado")
                pare
            caso 6: 
                escreva ("Exercício 6\n")
                escreva ("Saldo inicial: R$ 1000,00\n1- Depositar\n2- Sacar\n3- Ver Saldo\n4- Sair\n")
                leia (banc)
                escolha (banc) {
                  caso 1: 
                  escreva ("Digite o valor do depósito: ")
                  leia (valor_deposito)
                  se (valor_deposito > 0)
                  saldo_inicial = 1000
                  saldo_disponivel = saldo_inicial + valor_deposito
                  escreva ("Depósito realizado. Saldo total: ", saldo_disponivel)
                  pare 
                  caso 2:
                  escreva ("Digite o valor do saque: ")
                  leia (valor_saque)
                  saldo_inicial = 1000
                  se (valor_saque <= saldo_inicial){ 
                  saldo_saque = saldo_inicial - valor_saque 
                  escreva ("Saque realizado. Saldo disponível: ", saldo_saque)}
                  senao
                  escreva ("Saldo insuficiente")
                  pare
                  caso 3:
                  saldo_inicial = 1000 
                  escreva ("Saldo disponível:", saldo_inicial)
                  leia (saldo_inicial)
                  pare
                  caso 4:
                  saldo_inicial = 1000
                  escreva ("Operação finalizada. Saldo final: ", saldo_inicial)
                  leia (saldo_inicial)
                  pare
                }
                pare
            caso 7:
                escreva ("Exercício 7\n")
                escreva ("Digite o valor da compra:")
                leia (valor_compra)

                escreva ("Digite a categoria do cliente (1- Comum, 2- Premium, 3- Funcionário):")
                leia (categoria)
                
                se (categoria == 1)
                desconto = valor_compra * 0.05
                                
                se (categoria == 2)
                desconto = valor_compra * 0.10

                se (categoria == 3)
                desconto = valor_compra *0.15

                escreva ("Valor do desconto:", desconto)

                valor_final = valor_compra - desconto

                escreva ("\nValor final da compra:", valor_final)

                pare
            caso 8: 
                escreva ("Exercício 8\n") 
                
                para (i = 1; i <= 10; i++) 
                {
                escreva ("Digite um número: \n")
                leia(n)
                se (n > 0) {
                    positivos++
                }  
                senao se (n < 0) {
                    negativos++
                } 
                senao {
                    zeros++
                }  
                }
                escreva("Positivos: ", positivos, "\n")
                escreva("Negativos: ", negativos, "\n")
                escreva("Zeros: ", zeros)
                
                pare
            caso 9:
                escreva ("Exercício 9\n")
                escreva("Digite N: ")
                leia(n)
                para (i = 1; i <= 10; i++) {
                escreva(n, " + ", i, " = ", n + i, "\n")}
                pare
            caso 10:
                escreva ("Exercício 10")
                escreva ("\nDigite N:")
                leia (n)
                para (i = n; i >= 1; i--) {
                escreva (n, "-", i, " = ", n - i, "\n")
                soma += (n-i)}
                escreva ("Soma dos resultados: ", soma)
                pare
            caso contrario:
                escreva("Opção inválida")
        }
    }
}