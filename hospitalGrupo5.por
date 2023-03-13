programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	 
	logico quartos[20]
	inteiro opcao = 0, faturamentoTotal = 0, totalConsultas = 0, totalInternacoes = 0, faturamentoConsulta = 0, faturamentoInternacoes = 0, quarto = 0
	cadeia nome, telefone, especialidade
	
	funcao inicio()
	{

		 enquanto(opcao != 5) {
			escreva("Seja Bem-vindo(a) ao Hosptial XPTO !\n") 
		
		
		
			escreva("\n")
		     escreva("| Digite uma opção:\t\t|\n")
		     escreva("|\t\t\t\t|")
		     escreva("\n")
		 	escreva(  "|  1 - Consulta Ambulatorial\t|\n",
				"|  2 - Internação\t\t|\n",
				"|  3 - Listar Quartos\t\t|\n",
				"|  4 - Faturamento\t\t|\n",
				"|  5 - Sair do Programa\t\t|\n")
	
			escreva("|\t\t\t\t|")
			escreva("\n")
		
		
			escreva("\n")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					consulta()
				pare
				caso 2:
					internacao()
				pare
				caso 3:
					listarQuartos()
				pare
				caso 4:
					faturamento()
				pare
				caso 5: escreva("--> Fim do Programa")
				pare

				caso contrario:
					escreva("Opção Inválida\n")
					escreva("Retornando ao menu...\n")
					Util.aguarde(2000)
					limpa()

					
			}
		
		
	}
	
	}funcao dadosPaciente() {
	     	
			escreva("\nDigite os dados do paciente\n")
			escreva("\nNome: ")
			leia(nome)
			
			escreva("\nTelefone: ")
			leia(telefone)
		}

		funcao consulta() {
			
			limpa()
			escreva("Consulta Ambulatório\n")
			escreva("---------------\n")

			dadosPaciente()
			
			escreva("\nEspecialidade: ")
			leia(especialidade)
			
			totalConsultas++
			
			especialidade = Texto.caixa_alta(especialidade)
			se (especialidade == "PEDIATRIA") {
				faturamentoConsulta += 150
			} senao {
				faturamentoConsulta += 120
				escreva("\nConsulta feita com sucesso.\n", "Retornando ao menu...")
			Util.aguarde(2000)
			}
			limpa()
		}

		funcao internacao() {

			limpa()
			quarto = 0
			
			escreva("Internação\n")
			escreva("---------------\n")
			dadosPaciente()


				enquanto (quarto < 1 ou quarto > 20) {
					escreva("\nNúmero do quarto a ser internado: ")
					leia(quarto)
					se (quarto < 1 ou quarto > 20) {
						escreva("Número do quarto inválido! Digite um novo quarto\n")
					}
				}
	
				se (quartos[quarto-1] != verdadeiro) {
					quartos[quarto-1] = verdadeiro
					escreva("Quarto reservado com sucesso!\n")
					escreva("Retornando ao menu...")
					Util.aguarde(2000)
					limpa()
					totalInternacoes++
					faturamentoInternacoes += 500
					
				} senao {
					escreva("Quarto ocupado!\n")
					escreva("Retornando ao menu...")
					Util.aguarde(2000)
				}

		}

		funcao listarQuartos() {
			limpa()

			para (inteiro i = 0; i < 20; i++) {
				se (quartos[i] == verdadeiro) {
					escreva("Quarto ", i+1, ": Ocupado\n")
				} senao {
					escreva("Quarto ", i+1, ": Disponível\n")
				}
			}
		}

		funcao faturamento() {

			limpa()
			
			faturamentoTotal = faturamentoConsulta + faturamentoInternacoes
			
			escreva("\nTotal de Consultas: ", totalConsultas)
			escreva("\nTotal de Internações: ", totalInternacoes)
			escreva("\nTotal Faturado em Consultas: ", faturamentoConsulta)
			escreva("\nTotal Faturado em Internações: ", faturamentoInternacoes)
			escreva("\nTotal Faturado: ", faturamentoTotal)
		}

		
}
