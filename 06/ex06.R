#
# 6.	Um novo teste para diagnóstico de uma doença foi avaliado em 200 pacientes:
# 120 realmente doentes e 80 saudáveis. O teste detectou 100 dos doentes (verdadeiros positivos),
# 20 doentes foram classificados como negativos (falsos negativos), 10 saudáveis receberam resultado
# positivo (falsos positivos) e 70 saudáveis foram corretamente classificados como negativos (verdadeiros negativos).
# a)	Calcule sensibilidade, especificidade, valor preditivo positivo (VPP) e valor preditivo negativo (VPN) desse teste.
# b)	Interprete cada um desses indicadores, com a explicação em comentário ou na tela.


# --- Resolução Completa do Exercício 6 ---

# Primeiro, definimos os quatro valores fundamentais da tabela de contingência (matriz de confusão)
vp <- 100 # Verdadeiros Positivos: Doentes que testaram positivo
fn <- 20  # Falsos Negativos: Doentes que testaram negativo
fp <- 10  # Falsos Positivos: Saudáveis que testaram positivo
vn <- 70  # Verdadeiros Negativos: Saudáveis que testaram negativo

# Limpar o console para uma saída limpa
cat("\014")

# (Opcional, mas útil) Criar e exibir a Matriz de Confusão para visualização
# Colunas: Realidade (Doente ou Saudável)
# Linhas: Resultado do Teste (Positivo ou Negativo)
matriz_confusao <- matrix(c(vp, fn, fp, vn), nrow = 2, byrow = TRUE,
                           dimnames = list(Resultado_Teste = c("Positivo", "Negativo"),
                                           Realidade = c("Doente", "Saudável")))

cat("--- Matriz de Confusão ---\n")
print(matriz_confusao)
cat("\n")


# ===================================================================
# a) Calcule sensibilidade, especificidade, VPP e VPN.
# ===================================================================
cat("--- a) Cálculos dos Indicadores do Teste ---\n\n")

# Fórmula da Sensibilidade (Taxa de Verdadeiros Positivos)
# De todos que SÃO doentes, quantos o teste acertou?
sensibilidade <- vp / (vp + fn)

# Fórmula da Especificidade (Taxa de Verdadeiros Negativos)
# De todos que SÃO saudáveis, quantos o teste acertou?
especificidade <- vn / (vn + fp)

# Fórmula do Valor Preditivo Positivo (VPP)
# De todos que TESTARAM positivo, quantos realmente são doentes?
vpp <- vp / (vp + fp)

# Fórmula do Valor Preditivo Negativo (VPN)
# De todos que TESTARAM negativo, quantos realmente são saudáveis?
vpn <- vn / (vn + fn)

# Mostrando os resultados calculados
cat("Sensibilidade:", round(sensibilidade, 4), "\n")
cat("Especificidade:", round(especificidade, 4), "\n")
cat("Valor Preditivo Positivo (VPP):", round(vpp, 4), "\n")
cat("Valor Preditivo Negativo (VPN):", round(vpn, 4), "\n\n")


# ===================================================================
# b) Interprete cada um desses indicadores.
# ===================================================================
cat("--- b) Interpretação Prática dos Indicadores ---\n\n")

# Interpretação da Sensibilidade
cat("1. Sensibilidade:", paste0(round(sensibilidade * 100, 1), "%"), "\n")
cat("   - Interpretação: O teste é capaz de identificar corretamente 83.3% das pessoas que realmente estão doentes. Em outras palavras, se uma pessoa tem a doença, a probabilidade de o teste dar positivo é de 83.3%.\n\n")

# Interpretação da Especificidade
cat("2. Especificidade:", paste0(round(especificidade * 100, 1), "%"), "\n")
cat("   - Interpretação: O teste é capaz de descartar corretamente a doença em 87.5% das pessoas que realmente são saudáveis. Se uma pessoa não tem a doença, a probabilidade de o teste dar negativo é de 87.5%.\n\n")

# Interpretação do VPP
cat("3. Valor Preditivo Positivo (VPP):", paste0(round(vpp * 100, 1), "%"), "\n")
cat("   - Interpretação: Se um paciente recebe um resultado POSITIVO, a probabilidade de ele realmente estar doente é de 90.9%. Este valor mede a confiabilidade de um resultado positivo.\n\n")

# Interpretação do VPN
cat("4. Valor Preditivo Negativo (VPN):", paste0(round(vpn * 100, 1), "%"), "\n")
cat("   - Interpretação: Se um paciente recebe um resultado NEGATIVO, a probabilidade de ele realmente ser saudável é de 77.8%. Este valor mede a confiabilidade de um resultado negativo.\n\n")