# Classes de Equivalência e Casos de Testes

---

## CT-01 - Registrar Nova Despesa Financeira

### Classes de Equivalência

| Condições de Entrada                      | Válidos                                    | Inválidos                             |
|-------------------------------------------|--------------------------------------------|---------------------------------------|
| Categoria deve ser válida                 | Categoria existente, ex.: "Alimentação" (1) | Categoria inexistente ou vazia (2)   |
| Valor deve ser maior que zero             | Valor > 0, ex.: R$50,00 (3)                | Valor ≤ 0, ex.: R$0,00 ou negativo (4) |
| Data deve estar no formato correto        | Data no formato "YYYY-MM-DD" (5)           | Data em formato incorreto ou vazia (6) |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1, 3, 5                 | Categoria: "Alimentação", Valor: R$50,00, Data: "2024-12-31" | Despesa registrada corretamente          |
| 2, 3, 5                 | Categoria: "", Valor: R$50,00, Data: "2024-12-31"          | Erro: Categoria inválida                 |
| 1, 4, 5                 | Categoria: "Alimentação", Valor: R$0,00, Data: "2024-12-31" | Erro: Valor inválido                     |
| 1, 3, 6                 | Categoria: "Alimentação", Valor: R$50,00, Data: "31-12-2024" | Erro: Formato de data inválido           |

---

## CT-02 - Criar Meta Financeira

### Classes de Equivalência

| Condições de Entrada                      | Válidos                                    | Inválidos                             |
|-------------------------------------------|--------------------------------------------|---------------------------------------|
| Nome da meta deve ser preenchido          | Nome não vazio, ex.: "Viagem" (1)          | Nome vazio (2)                       |
| Valor deve ser maior que zero             | Valor > 0, ex.: R$5.000,00 (3)            | Valor ≤ 0, ex.: R$0,00 ou negativo (4) |
| Data limite deve estar no formato correto | Data no formato "YYYY-MM-DD" (5)           | Data em formato incorreto ou vazia (6) |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1, 3, 5                 | Nome: "Viagem", Valor: R$5.000,00, Data: "2024-12-31" | Meta criada corretamente                 |
| 2, 3, 5                 | Nome: "", Valor: R$5.000,00, Data: "2024-12-31"      | Erro: Nome inválido                      |
| 1, 4, 5                 | Nome: "Viagem", Valor: R$0,00, Data: "2024-12-31"    | Erro: Valor inválido                     |
| 1, 3, 6                 | Nome: "Viagem", Valor: R$5.000,00, Data: "31-12-2024" | Erro: Formato de data inválido           |

---

## CT-03 - Login com Dados Inválidos

### Classes de Equivalência

| Condições de Entrada                      | Válidos                                    | Inválidos                             |
|-------------------------------------------|--------------------------------------------|---------------------------------------|
| E-mail deve estar no formato correto      | E-mail válido, ex.: "usuario@exemplo.com" (1) | E-mail inválido ou vazio (2)         |
| Senha deve ser válida                     | Senha correspondente ao cadastro (3)      | Senha incorreta ou vazia (4)         |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1, 3                    | E-mail: "usuario@exemplo.com", Senha: "senha123" | Login bem-sucedido                      |
| 2, 3                    | E-mail: "usuario@com", Senha: "senha123"        | Erro: E-mail inválido                    |
| 1, 4                    | E-mail: "usuario@exemplo.com", Senha: ""        | Erro: Senha inválida                     |

---

## CT-04 - Gerar Gráfico de Despesas Mensais

### Classes de Equivalência

| Condições de Entrada                      | Válidos                                    | Inválidos                             |
|-------------------------------------------|--------------------------------------------|---------------------------------------|
| Transações devem existir                  | Transações válidas (1)                     | Nenhuma transação disponível (2)     |
| Categorias das transações devem ser válidas | Categorias reconhecidas (3)                | Categorias não reconhecidas (4)      |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1, 3                    | Transações: [R$200 - Alimentação, R$100 - Transporte] | Gráfico gerado corretamente             |
| 2, 3                    | Transações: []                                 | Erro: Nenhuma transação disponível       |
| 1, 4                    | Transações: [R$200 - Diversão]                  | Erro: Categoria não reconhecida          |

---

**Nota**: Continue criando as classes de equivalência para os outros casos de teste (CT-05 a CT-10) seguindo o mesmo padrão. Caso precise de ajuda para terminar, me avise! 😉
