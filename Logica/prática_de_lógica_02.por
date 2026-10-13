programa
{

	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{

		real km_rodados, litros_consumidos, preco_litro
		real rendimento, custo_diesel, custo_por_km

		escreva("Digite os quilômetros rodados (km): ")
		leia(km_rodados)
		
		escreva("Digite os litros de diesel consumidos: ")
		leia(litros_consumidos)
		
		escreva("Digite o preço do litro do diesel: R$ ")
		leia(preco_litro)

		rendimento = km_rodados / litros_consumidos
		custo_diesel = litros_consumidos * preco_litro
		custo_por_km = custo_diesel / km_rodados

		rendimento = mat.arredondar(rendimento, 2)
		custo_diesel = mat.arredondar(custo_diesel, 2)
		custo_por_km = mat.arredondar(custo_por_km, 2)

		escreva("\n--- RESULTADOS ---")
		escreva("\nRendimento: ", rendimento, " km/l")
		escreva("\nCusto total do diesel: R$ ", custo_diesel)
		escreva("\nCusto por km rodado: R$ ", custo_por_km, "\n")


		escreva("\nClassificação do Caminhão: ")
		se (rendimento < 3.0) 
		{
			escreva("Alto Consumo (Pouco Econômico)\n")
		}
		senao se (rendimento >= 3.0 e rendimento <= 5.0) 
		{
			escreva("Consumo Médio (Normal)\n")
		}
		senao 
		{
			escreva("Baixo Consumo (Econômico)")
		}
	}
}