
# Bioestatística - Exercício 02
# 2.	Na Tabela 2 tem-se um resumo da média salarial (em reais) de
# professores do ensino básico em territórios fictícios.

# ---------------------------------------------------------------
# Tabela 2: Resumo salarial dos professores do ensino básico
# ---------------------------------------------------------------
# | Percentil | Estatística | Valor (R$) | Território   |
# |-----------|-------------|------------|--------------|
# | 100%      | Máximo      | 63.662,00  | Ponte Nova   |
# | 75%       | Q3          | 46.119,00  | -            |
# | 50%       | Mediana     | 41.786,00  | -            |
# | 25%       | Q1          | 38.092,00  | -            |
# | 0%        | Mínimo      | 24.165,00  | Balma        |
# ---------------------------------------------------------------

# a)	Qual a amplitude e sua interpretação?
# b)	Mostre e interprete o intervalo interquartil.
# c)	Construa o boxplot com distribuição dos salários dos professores a partir dos dados 
#      da Tabela 2. Com base no boxplot, explique a direção da assimetria da distribuição.
# d)	Usando as funções do R, mostre as estatísticas descritivas para ter uma visão geral 
#     dos salários: valor mínimo, primeiro quartil (Q1), mediana, terceiro quartil (Q3), máximo, média e desvio padrão.
# e)	Embora a distribuição seja assimétrica, ainda que aproximadamente com forma de 
#     sino, qual valor é mais próximo para seu desvio padrão, dados os seguintes 
# valores: 100, 1.000, 11.000 ou 29.000? Explique o resultado (comentário, print ou cat).

# --- Resolução Completa do Exercício 2 ---

# 1. Definir as estatísticas fornecidas pela Tabela 2
minimo <- 24165.00
q1     <- 38092.00
mediana<- 41786.00
q3     <- 46119.00
maximo <- 63662.00


# ===================================================================
# a) Qual a amplitude e sua interpretação?
# ===================================================================
cat("--- a) Amplitude ---\n")

amplitude <- maximo - minimo

cat("O valor da amplitude é: R$", format(amplitude, big.mark = "."), "\n")
cat("Interpretação: A amplitude representa a variação total nos salários, mostrando que a diferença entre o maior e o menor salário é de R$ 39.497,00.\n\n")


# ===================================================================
# b) Mostre e interprete o intervalo interquartil.
# ===================================================================
cat("--- b) Intervalo Interquartil (IIQ) ---\n")

iiq <- q3 - q1

cat("O valor do Intervalo Interquartil (IIQ) é: R$", format(iiq, big.mark = "."), "\n")
cat("Interpretação: O IIQ mostra que os 50% centrais dos salários (o 'meio' da distribuição) estão contidos em uma faixa de R$ 8.027,00.\n\n")


# ===================================================================
# c) Construa o boxplot com distribuição dos salários.
# ===================================================================
cat("--- c) Boxplot e Análise da Assimetria ---\n")
cat("Gerando o boxplot a partir das estatísticas...\n")

# -- INÍCIO DA CORREÇÃO --
# Para criar um boxplot a partir de estatísticas (e não de dados brutos),
# precisamos primeiro formatar os dados em uma lista especial.
dados_boxplot <- list(
  stats = matrix(c(minimo, q1, mediana, q3, maximo), 5, 1),
  n = 1, 
  names = "Salários"
)

# Agora, usamos a função bxp() para desenhar o gráfico a partir dessa lista.
# O comando bxp() é a forma correta de plotar quando você já tem as estatísticas.

# DICA: Se a janela do gráfico não abrir, execute o comando 'windows()' primeiro.
# windows() 

# Comando correto para desenhar o gráfico:
bxp(dados_boxplot, 
    main = "Boxplot da Distribuição Salarial dos Professores",
    ylab = "Salário (em R$)",
    border = "blue",
    col = "lightblue"
)
# -- FIM DA CORREÇÃO --

cat("\nAnálise da Assimetria com base no Boxplot:\n")
cat("A distribuição apresenta uma ASSIMETRIA À DIREITA (positiva).\n")
cat("Isso é visível por dois motivos:\n")
cat("1. A cauda superior (do Q3 ao máximo) é muito mais longa que a cauda inferior (do Q1 ao mínimo).\n")
cat("   - Distância da Cauda Superior: R$", maximo - q3, "\n")
cat("   - Distância da Cauda Inferior: R$", q1 - minimo, "\n")
cat("2. A mediana (R$ 41.786) está mais próxima do Q1 (R$ 38.092) do que do Q3 (R$ 46.119), indicando que os dados estão mais concentrados na parte de baixo.\n\n")


# ===================================================================
# d) Mostre as estatísticas descritivas para ter uma visão geral.
# ===================================================================
cat("--- d) Estatísticas Descritivas ---\n")
cat("Como não temos os dados brutos, não podemos calcular a média e o desvio padrão. Apenas listamos os valores fornecidos:\n")
cat("Valor Mínimo:", minimo, "\n")
cat("1º Quartil (Q1):", q1, "\n")
cat("Mediana (Q2):", mediana, "\n")
cat("3º Quartil (Q3):", q3, "\n")
cat("Valor Máximo:", maximo, "\n\n")


# ===================================================================
# e) Qual valor é mais próximo para seu desvio padrão?
# ===================================================================
cat("--- e) Estimativa do Desvio Padrão ---\n")
cat("Usando a 'Regra Prática da Amplitude', podemos estimar o desvio padrão (DP) dividindo a amplitude por 4.\n")

dp_estimado <- amplitude / 4

cat("Cálculo: DP ≈", amplitude, "/ 4 =", dp_estimado, "\n\n")

cat("Das opções fornecidas (100, 1.000, 11.000, 29.000), o valor mais próximo da nossa estimativa (R$ 9.874,25) é 11.000.\n")
cat("Portanto, a resposta mais plausível é 11.000.\n")