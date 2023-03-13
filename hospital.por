programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro pacientesInternados, consultasRealizadas, quarto
		real totalGeralConsultas, totalGeralFaturado, totalGeralInternacoes
		logico quartos[20]
		caracter nome[100], telefone[100], especialidade[100]
//variaveis//
		pacientesInternados = 0
		consultasRealizadas = 0
		totalGeralInternacoes = 0.0
		totalGeralConsultas = 0.0
		totalGeralFaturado = 0.0
			para(inteiro i=0; i < 20; i++){
				quartos[i] = falso

		} 
		//definir funçoes//

	}funcao cadeia preencherDadosPaciente()
	
	{
		caracter nome, telefone, especialidade


		  escreva("Seja bem vindo ao Hospital XPTO!", "\nDigite o nome do paciente: ")
		  leia(nome)
		  escreva("\nDigite o telefone do paciente: ")
		  leia(telefone)
		  escreva("\nDigite a especialidade da consulta: ")
		  leia(especialidade)
		  retorne nome + ";" + telefone + ";" + especialidade 
	
	}funcao logico verificarQuartoOcupado(inteiro quarto)
		  {
		  	logico quartos[20]
		  	
		se (quartos[quarto]) 
		retorne verdadeiro
  		senao
    		retorne falso
	
	
		}funcao inteiro verificarNumeroQuarto()
		{
			inteiro quarto

		
		    escreva("Digite o número do quarto: ")
		    leia(quarto)
		    se (quarto < 1) (quarto > 20) 
		    escreva("Número de quarto inválido! Tente novamente.")
		}
		  	se(quarto >= 1) e (quarto <= 20)
		  	retorne quarto
			
		}
		//listar quartos

		  escreva("Lista de quartos:")
		  para(inteiro i=0; i < 10; i++){

		}
		    se quartos[i] entao
		      escreva("Quarto ", i, " - Ocupado")
		    senao
		      escreva("Quarto ", i, " - Disponível")
			
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1015; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */