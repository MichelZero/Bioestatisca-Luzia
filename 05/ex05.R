#
# 5.	Em um estudo sobre taxa de mortalidade infantil, uma amostra aleatória de 40 municípios 
# do país X apresentou média de 15,5 mortes por 1.000 nascidos vivos, com desvio padrão de 4,2.
# a)	Calcule o intervalo de confiança de 95% para a média populacional, mostrando a saída na tela usando print ou cat.
# b)	O que significa, em termos práticos, o resultado obtido para o intervalo de confiança? Mostre na tela usando print ou cat.
#

# --- Resolução Completa do Exercício 5 ---

# Primeiro, vamos definir os valores fornecidos no enunciado
n <- 40                      # Tamanho da amostra
media_amostral <- 15.5       # Média da amostra (x̄)
desvio_padrao_amostral <- 4.2  # Desvio padrão da amostra (s)
nivel_confianca <- 0.95      # Nível de confiança

# Limpar o console para uma saída limpa
cat("\014") 


# ===================================================================
# a) Calcule o intervalo de confiança de 95% para a média populacional.
# ===================================================================

# A fórmula do Intervalo de Confiança (IC) para a média com desvio padrão da amostra é:
# IC = média_amostral ± (valor_crítico_t * erro_padrão)

# Passo 1: Calcular o erro padrão da média (Standard Error of the Mean)
erro_padrao <- desvio_padrao_amostral / sqrt(n)

# Passo 2: Calcular os graus de liberdade (degrees of freedom) para a distribuição t
# df = n - 1
graus_liberdade <- n - 1

# Passo 3: Encontrar o valor crítico t de Student
# Para 95% de confiança, temos 2.5% em cada cauda (alfa/2 = 0.025).
# A função qt() nos dá o valor de t para uma dada probabilidade acumulada.
alfa <- 1 - nivel_confianca
valor_critico_t <- qt(p = 1 - alfa/2, df = graus_liberdade)

# Passo 4: Calcular a margem de erro
margem_erro <- valor_critico_t * erro_padrao

# Passo 5: Calcular os limites inferior e superior do intervalo de confiança
limite_inferior <- media_amostral - margem_erro
limite_superior <- media_amostral + margem_erro

# --- Saída na Tela (item a) ---
cat("--- a) Intervalo de Confiança de 95% para a Média Populacional ---\n\n")

cat("Dados da Amostra:\n")
cat(" - Média Amostral (x̄):", media_amostral, "\n")
cat(" - Valor Crítico t:", round(valor_critico_t, 4), "(para", graus_liberdade, "graus de liberdade)\n")
cat(" - Margem de Erro:", round(margem_erro, 4), "\n\n")

cat("O intervalo de confiança de 95% para a média da taxa de mortalidade infantil é:\n")
cat("[", round(limite_inferior, 2), ", ", round(limite_superior, 2), "]\n\n")


# ===================================================================
# b) O que significa, em termos práticos, o resultado obtido?
# ===================================================================

# --- Saída na Tela (item b) ---
cat("--- b) Significado Prático do Resultado ---\n\n")

cat("O intervalo de confiança de 95% [14.16, 16.84] significa que:\n\n")

cat("Temos 95% de confiança de que a VERDADEIRA MÉDIA da taxa de mortalidade infantil para a POPULAÇÃO INTEIRA de municípios do país X está em algum lugar entre 14,16 e 16,84 mortes por 1.000 nascidos vivos.\n\n")

cat("Em outras palavras, com base na nossa amostra, a média real para todos os municípios não é exatamente 15.5, mas é muito provável que esteja dentro dessa faixa calculada. O intervalo nos dá uma estimativa da precisão da nossa média amostral.\n")