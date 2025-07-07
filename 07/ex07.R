#
# 7.	Uma pesquisadora deseja estudar a prevalência de hipertensão arterial em adultos
# em uma cidade com 10 bairros. Ela pode escolher entre amostragem aleatória simples ou
# amostragem estratificada por bairro. Obs.: aqui não é necessário código em R e sim o texto
# explicativo. Pode ser realizada em código R, como comentários ou usando saída na tela (print ou cat, por exemplo).
# a)	Explique a diferença entre as duas técnicas de amostragem.
# b)	Cite uma vantagem e uma desvantagem da amostragem estratificada.
# c)	Em qual situação a amostragem estratificada seria mais indicada nesse estudo? Justifique.


# --- Resolução Completa do Exercício 7 ---

# Este script usa a função cat() para exibir texto explicativo no console,
# respondendo a cada item da questão sobre técnicas de amostragem.

# Limpar o console para uma saída limpa
cat("\014")


# ===================================================================
# a) Explique a diferença entre as duas técnicas de amostragem.
# ===================================================================
cat("--- a) Diferença entre Amostragem Aleatória Simples e Estratificada ---\n\n")

cat("1. Amostragem Aleatória Simples (Simple Random Sampling):\n")
cat("   - Neste método, cada adulto da cidade inteira tem exatamente a mesma chance de ser selecionado para o estudo.\n")
cat("   - O processo funciona como um grande sorteio único, onde os participantes são retirados aleatoriamente da população total, sem qualquer subdivisão. É como colocar o nome de todos os adultos da cidade em um chapéu gigante e sortear a amostra.\n\n")

cat("2. Amostragem Estratificada (Stratified Sampling):\n")
cat("   - Este método envolve um processo de duas etapas:\n")
cat("     I. Primeiro, a população é dividida em subgrupos exclusivos e homogêneos, chamados 'estratos'. No nosso estudo, os 10 bairros seriam os estratos.\n")
cat("     II. Em seguida, uma amostragem aleatória simples é realizada DENTRO de cada estrato (bairro).\n")
cat("   - O resultado é que, em vez de um grande sorteio, temos 10 sorteios menores e independentes. Isso garante que cada bairro terá representantes na amostra final.\n\n")


# ===================================================================
# b) Cite uma vantagem e uma desvantagem da amostragem estratificada.
# ===================================================================
cat("--- b) Vantagens e Desvantagens da Amostragem Estratificada ---\n\n")

cat("Vantagem: Garantia de Representatividade e Maior Precisão\n")
cat("   - A principal vantagem é que a amostragem estratificada garante que todos os subgrupos (bairros) estarão representados na amostra. Isso evita o risco de, por puro azar, um bairro inteiro ficar de fora. Se a prevalência de hipertensão variar entre os bairros, a estratificação leva a estimativas mais precisas e confiáveis para a cidade como um todo.\n\n")

cat("Desvantagem: Maior Complexidade e Custo\n")
cat("   - A desvantagem é que sua implementação é mais complexa. A pesquisadora precisa de uma lista completa dos adultos em CADA UM dos 10 bairros (o 'sampling frame' de cada estrato), o que pode ser mais difícil e custoso de obter do que uma única lista da cidade inteira. O planejamento e a execução são mais trabalhosos.\n\n")


# ===================================================================
# c) Em qual situação a amostragem estratificada seria mais indicada?
# ===================================================================
cat("--- c) Quando a Amostragem Estratificada é Mais Indicada ---\n\n")

cat("A amostragem estratificada seria mais indicada na situação em que a pesquisadora SUSPEITA ou SABE que a prevalência de hipertensão VARIA SIGNIFICATIVAMENTE entre os 10 bairros.\n\n")

cat("Justificativa:\n")
cat("Imagine um cenário onde os bairros têm perfis socioeconômicos, demográficos ou de estilo de vida muito diferentes:\n")
cat(" - Bairros A e B: Centros urbanos de alta renda, com academias, acesso a alimentos saudáveis e população mais jovem (provável baixa prevalência de hipertensão).\n")
cat(" - Bairros C e D: Regiões periféricas, com menor acesso a serviços de saúde, maior população idosa e renda mais baixa (provável alta prevalência).\n\n")

cat("Nesse caso, uma amostragem aleatória simples poderia, por acaso, selecionar mais pessoas dos bairros A e B, levando a uma subestimação da taxa de hipertensão geral da cidade. A amostragem estratificada FORÇA a coleta de dados de cada tipo de bairro, garantindo que a contribuição de cada subgrupo para a média da cidade seja representada corretamente. Isso resulta em uma estimativa final muito mais precisa e fiel à realidade da população como um todo.\n")