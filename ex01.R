

# 1.	O número (em milhões) de habitantes de uma região, é apresentado na Tabela 1.
# a)	Construa uma distribuição de frequências relativas.
# b)	Represente os dados em um diagrama de colunas.
# c)	Por que a moda é a medida mais adequada para esses dados? Qual o seu valor? Mostre na tela usando print ou cat.





### Pacotes Necessários (certifique-se de que estão instalados) ###

# Se você não tiver os pacotes 'ggplot2' ou 'scales', instale-os primeiro.
# install.packages("ggplot2")
# install.packages("scales")

# Carregar os pacotes que vamos usar
library(ggplot2)
library(scales)

# --- Dados Iniciais ---
# 1. O número (em milhões) de habitantes de uma região.

# Criar os vetores com os dados da Tabela 1
regioes <- c("Europa", "Ásia", "Caribe", "América Central", "América do Sul", "África")
habitantes_milhoes <- c(741.5, 4463.3, 39.5, 0.79, 389.4, 1225.8)

# Criar um data frame (a estrutura de tabela do R)
dados <- data.frame(
  Nascimento = regioes,
  Habitantes = habitantes_milhoes
)

# Para evitar notação científica (ex: 1.2e+03) nos resultados e gráficos
options(scipen = 999)


### a) Construa uma distribuição de frequências relativas. ###

# 1. Calcular o total de habitantes
total_habitantes <- sum(dados$Habitantes)

# 2. Calcular a frequência relativa para cada região
# Frequência Relativa = (Valor da Região / Valor Total)
dados$Frequencia_Relativa <- dados$Habitantes / total_habitantes

# 3. Formatar a frequência relativa como porcentagem para melhor visualização
dados$Frequencia_Relativa_Percentual <- percent(dados$Frequencia_Relativa, accuracy = 0.1)

# 4. Mostrar a tabela com a distribuição de frequências
cat("--- a) Distribuição de Frequências Relativas ---\n\n")
print(dados)


### b) Represente os dados em um diagrama de colunas. ###

cat("\n--- b) Gerando o Diagrama de Colunas ---\n")
# Usamos o ggplot2 para criar um gráfico de alta qualidade
# reorder(Nascimento, -Habitantes) ordena as colunas da maior para a menor
grafico_colunas <- ggplot(dados, aes(x = reorder(Nascimento, -Habitantes), y = Habitantes, fill = Nascimento)) +
  geom_col() + # geom_col() é usado para criar gráficos de colunas com valores já definidos
  geom_text(aes(label = Habitantes), vjust = -0.5, size = 3.5) + # Adiciona os valores no topo das colunas
  labs(
    title = "População por Região de Nascimento",
    subtitle = "Em milhões de habitantes",
    x = "Região de Nascimento",
    y = "Número de Habitantes (em milhões)"
  ) +
  theme_minimal() + # Um tema visualmente mais limpo
  theme(legend.position = "none") # Remove a legenda, pois as cores já estão no eixo X

# Para exibir o gráfico no VS Code, basta "printar" o objeto do gráfico
print(grafico_colunas)


### c) Por que a moda é a medida mais adequada para esses dados? Qual o seu valor? ###

# 1. Explicação conceitual
cat("\n--- c) Análise da Moda ---\n\n")
cat("A variável 'Nascimento' é uma variável QUALITATIVA NOMINAL. Para esse tipo de variável, não é possível calcular medidas como média ou mediana (não faz sentido calcular a 'região média').\n")
cat("A única medida de tendência central aplicável é a MODA, que representa a categoria (neste caso, a região) com a maior frequência (neste caso, o maior número de habitantes).\n\n")

# 2. Encontrar a moda (a categoria com o maior valor)
# which.max() retorna o índice do valor máximo no vetor de Habitantes
indice_max <- which.max(dados$Habitantes)
regiao_modal <- dados$Nascimento[indice_max]

# 3. Mostrar o valor da moda na tela usando cat()
cat("O valor da moda para estes dados é a região:", regiao_modal, "\n")
cat("Isso ocorre porque 'Ásia' é a região com a maior população (4463.3 milhões).\n")
# Fim do script