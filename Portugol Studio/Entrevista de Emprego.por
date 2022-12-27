programa
{
	inclua biblioteca Util --> u
//variáveis(entrevistador)

//variáveis(entrevistado)
cadeia nome, formacao
inteiro idade, anos_experiencia, graduacao, escola
logico experiencia, estado_civil, se_escola

//início	
	funcao inicio()
	{
		questionario()
		
	}
//questionário do funcionario
	funcao questionario(){
		escreva("Qual é o seu nome?\n-->")
		leia(nome)
		limpa()
		escreva("Quantos anos você tem?\n-->")
		leia(idade)
		limpa()
		escolaridade()
	}
//graduacao/escolaridade
	funcao escolaridade(){
		escreva("Você já foi à escola ou faculdade?\n")
		escreva("1)Sim.\n")
		escreva("2)Não.\n-->")
		leia(escola)
		limpa()
		escolha(escola){
			caso 1:
			se_escola = verdadeiro
			pare
			caso 2:
			se_escola = falso
			pare
			caso contrario:
			limpa()
			escreva("Por favor, insira um valor válido!!")
			u.aguarde(5000)
			limpa()
			escolaridade()
			pare
			}
		se(se_escola == verdadeiro){
				escreva("Qual seu nível de Escolaridade?\n")
				escreva("1)Ensino Fundamental Incompleto(ou Inferior)\n")
				escreva("2)Ensino Fundamenal Completo\n")
				escreva("3)Ensino Médio Incompleto\n")
				escreva("4)Ensino Médio Completo\n")
				escreva("5)Ensinor Superior\n-->")
				leia(graduacao)
				escolha(graduacao){
					caso 1:
						formacao = "Ensino Fundamental Incompleto(ou Inferior)"
					pare
					caso 2:
						formacao = "Ensino Fundamenal Completo"
					pare
					caso 3:
						formacao = "Ensino Médio Incompleto"
					pare
					caso 4:
						formacao = "Ensino Médio Completo"
					pare
					caso 5:
						formacao = "Ensino Superior"
					pare
					caso contrario:
						limpa()
						escreva("Por favor, insira um valor válido!!")
						u.aguarde(5000)
						limpa()
						escolaridade()
					pare
			}
				
				}senao{
					formacao = "Não possui."
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 635; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */