programa
{
	inclua biblioteca Util
	 
	logico quartos[20]
	inteiro opcao = 0,faturamentoTotal = 0, totalConsultas = 0, totalInternacoes = 0, faturamentoConsulta = 0, faturamentoInternacoes = 0, quarto = 0
	cadeia nome, telefone, especialidade
	
	funcao inicio()
	{

		enquanto(opcao != 5) {
			escreva("\nHospital - XPTO\n")
			escreva("---------------\n")
			escreva("1 - Consulta Ambulatório\n")
			escreva("2 - Internação\n")
			escreva("3 - Listar Quartos\n")
			escreva("4 - Faturamento\n")
			escreva("5 - Sair do Programa\n")
			escreva("---------------\n")
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

					pare
			}
		}
		
	}

		funcao consulta() {
			
			limpa()
			escreva("Consulta Ambulatório\n")
			escreva("---------------\n")

			dadosPaciente()
			
			escreva("\nEspecialidade: ")
			leia(especialidade)
			
			totalConsultas++
			
			se (especialidade == "Pediatria" ou especialidade == "pediatria") {
				faturamentoConsulta += 150
			} senao {
				faturamentoConsulta += 120
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
					escreva("Número do quarto a ser internado: ")
					leia(quarto)
					se (quarto < 1 ou quarto > 20) {
						escreva("Número do quarto inválido!\n")
					}
				}
	
				se (quartos[quarto-1] != verdadeiro) {
					quartos[quarto-1] = verdadeiro
					escreva("Quarto reservado com sucesso!\n")
					totalInternacoes++
					faturamentoInternacoes += 500
					
				} senao {
					escreva("Quarto ocupado!\n")
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
			
			escreva("Total de Consultas: ", totalConsultas, "\n")
			escreva("Total de Internações: ", totalInternacoes, "\n")
			escreva("Total Faturado em Consultas: ", faturamentoConsulta, "\n")
			escreva("Total Faturado em Internações: ", faturamentoInternacoes, "\n")
			escreva("Total Faturado: ", faturamentoTotal, "\n")
		}

		funcao dadosPaciente() {
			escreva("Digite os dados do paciente\n")
			
			escreva("Nome: ")
			leia(nome)
			
			escreva("\nTelefone: ")
			leia(telefone)
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2782; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */