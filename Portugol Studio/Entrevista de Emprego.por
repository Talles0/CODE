programa
{
	inclua biblioteca Util --> u
//variáveis(entrevistador)

//variáveis(entrevistado)
cadeia nome
inteiro idade, anos_experiencia, graduacao, escola
logico experiencia, estado_civil, se_escola

//início	
	funcao inicio()
	{
		escolaridade()
		
	}
//questionário do funcionario
	funcao questionario(){
		escreva("Qual é o seu nome?\n-->")
		leia(nome)
		limpa()
		escreva("Quantos anos você tem?\n-->")
		leia(idade)
		limpa()
		
	}
//graduacao/escolaridade
	funcao escolaridade(){
		escreva("Você já foi à escola ou faculdade?\n")
		escreva("1)Sim.\n")
		escreva("2)Não.\n")
		leia(escola)
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
			se(se_escola == verdadeiro){
				escreva("Qual seu nível de Escolaridade?\n")
				escreva("1)Ensino Fundamental Incompleto(ou Inferior)\n")
				escreva("2)Ensino Fundamenal Completo\n")
				escreva("3)Ensino Médio Incompleto\n")
				escreva("4)Ensino Médio")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1098; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */