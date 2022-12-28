programa
{
	inclua biblioteca Util --> u
//variáveis(entrevistador)

//variáveis(entrevistado)
cadeia qual_nome, formacao, tempo_experiencia, qual_estado_civil
inteiro qual_idade, quanta_experiencia, graduacao, escola, ja_experiencia, experiencia_anos_meses, escolha_estado_civil
logico se_experiencia, se_escola

//início	
	funcao inicio()
	{
		questionario()
		
	}
//questionário do funcionario
	funcao questionario(){
		nome()
		idade()
		escolaridade()
		experiencia()
		estado_civil()
		limpa()
		ficha()
	}
//nome
	funcao nome(){
		escreva("Qual é o seu nome?\n-->")
		leia(qual_nome)
		limpa()
	}
//idade
	funcao idade(){
		escreva("Quantos anos você tem?\n-->")
		leia(qual_idade)
		limpa()
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
			erro()
			escolaridade()
			pare
			}
		se(se_escola == verdadeiro){
				escreva("Qual seu nível de Escolaridade?\n")
				escreva("1)Ensino Fundamental Incompleto.(ou Inferior)\n")
				escreva("2)Ensino Fundamenal Completo.\n")
				escreva("3)Ensino Médio Incompleto.\n")
				escreva("4)Ensino Médio Completo.\n")
				escreva("5)Ensinor Superior.\n-->")
				leia(graduacao)
				escolha(graduacao){
					caso 1:
						formacao = "Ensino Fundamental Incompleto.(ou Inferior)"
					pare
					caso 2:
						formacao = "Ensino Fundamenal Completo."
					pare
					caso 3:
						formacao = "Ensino Médio Incompleto."
					pare
					caso 4:
						formacao = "Ensino Médio Completo."
					pare
					caso 5:
						formacao = "Ensino Superior."
					pare
					caso contrario:
						erro()
						escolaridade()
					pare
			}
				
				}senao{
					formacao = "Não possui."
		}
					limpa()
	}
//experiência.
	funcao experiencia(){
		escreva("Você tem experiência na área?\n")
		escreva("1)Sim.\n")
		escreva("2)Não.\n-->")
		leia(ja_experiencia)
		limpa()
		escolha(ja_experiencia){
			caso 1:
			se_experiencia = verdadeiro
			pare
			caso 2:
			se_experiencia = falso
			pare
			caso contrario:
			limpa()
			escreva("Por favor, insira um valor válido!!")
			u.aguarde(5000)
			limpa()
			experiencia()
			pare
		}
		se(se_experiencia == verdadeiro){
			escreva("Anos ou Meses?\n")
			escreva("1)Anos.\n")
			escreva("2)Meses.\n-->")
			leia(experiencia_anos_meses)
			limpa()
			escolha(experiencia_anos_meses){
				caso 1:
				escreva("Quantos anos de experiência?\n-->")
				leia(quanta_experiencia)
				tempo_experiencia = (quanta_experiencia + " ano(s) de experiência.")
				pare
				caso 2:
				escreva("Quantos meses de experiência?\n-->")
				leia(quanta_experiencia)
				tempo_experiencia = (quanta_experiencia + " mes(es) de experiência.")
				pare
				caso contrario:
				erro()
				experiencia()
				pare
			}
		}senao se(se_experiencia == falso){
			tempo_experiencia = "Não possui."
		}
			limpa()
	}
//estado civil
	funcao estado_civil(){
		escreva("Qual é o seu estado civil?\n")
		escreva("1)Solteiro(a).\n")
		escreva("2)União instável.\n")
		escreva("3)União estável.\n")
		escreva("4)Casado(a)\n-->")
		leia(escolha_estado_civil)
		limpa()
		escolha(escolha_estado_civil){
			caso 1:
			qual_estado_civil = "Solteiro(a)."
			pare
			caso 2:
			qual_estado_civil = "União instável."
			pare
			caso 3:
			qual_estado_civil = "União estável."
			pare
			caso 4:
			qual_estado_civil = "Casado(a)."
			pare
			caso contrario:
			erro()
			estado_civil()
			pare
		}
	}
//ficha tecnica
	funcao ficha(){
		escreva("*****Ficha Técnica*****\n")
		escreva("Nome:" + qual_nome + ".\n")
		escreva("Idade:" + qual_idade + " anos de idade.\n")
		escreva("Formação:" + formacao + "\n")
		escreva("Experiência:" + tempo_experiencia + "\n")
		escreva("Estado civil:" + qual_estado_civil + "\n")
		escreva("***********************")
	}
	
//mensagem de erro
	funcao erro(){
		limpa()
		escreva("Por favor, insira um valor válido!!")
		u.aguarde(5000)
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2821; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */