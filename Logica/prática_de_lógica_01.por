programa
{
	funcao inicio()
	{
		const inteiro CAIXAS_POR_PALETE = 40

		inteiro quantidade_caixas, paletes_completos, caixas_sobrantes
		real peso_caixa, temperatura_camara, peso_total

		escreva("--- SISTEMA DE EXPEDIÇÃO E CONTROLE DE CÂMARA ---\n")

		escreva("Digite a quantidade de caixas produzidas: ")
		leia(quantidade_caixas)

		escreva("Digite o peso de cada caixa (kg): ")
		leia(peso_caixa)

		escreva("Digite a temperatura da câmara (°C): ")
		leia(temperatura_camara)

		peso_total = quantidade_caixas * peso_caixa

		paletes_completos = quantidade_caixas / CAIXAS_POR_PALETE
		caixas_sobrantes = quantidade_caixas % CAIXAS_POR_PALETE

		escreva("\n--- RESUMO DA PRODUÇÃO ---\n")
		escreva("1. Peso total produzido: ", peso_total, " kg\n")
		escreva("2. Paletes completos: ", paletes_completos, " | Caixas que sobram para o próximo turno: ", caixas_sobrantes, "\n")

		escreva("3. Status do carregamento: ")

		se (temperatura_camara <= -18.0 e paletes_completos > 0)
		{
			escreva("Carregamento liberado\n")
		}
		senao
		{
      
			se (temperatura_camara > -18.0 e paletes_completos == 0)
			{
				escreva("câmara acima de -18 °C e nenhum palete completo\n")
			}
			senao se (temperatura_camara > -18.0)
			{
				escreva("câmara acima de -18 °C\n")
			}
			senao
			{
				escreva("nenhum palete completo\n")
			}
		}
	}
}
