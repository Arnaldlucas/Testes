## Padrão para Criação de Classes de Equivalência

### Como foi desenvolvido

Para cada caso de teste, as classes de equivalência foram criadas com base nas condições de entrada específicas do cenário testado. Essas condições foram divididas entre **válidas** e **inválidas**, com o objetivo de cobrir todos os comportamentos esperados, garantindo assim que tanto os caminhos positivos quanto os negativos fossem testados. 

### Padrão utilizado

1. **Identificação das Condições de Entrada**: Para cada caso de teste, as condições necessárias foram analisadas e registradas, como valores válidos, formatos esperados, ou estados do sistema.

2. **Classificação entre Válidos e Inválidos**: Cada condição de entrada foi categorizada como válida ou inválida, sendo numerada para facilitar o rastreamento.

3. **Associação com os Casos de Teste**: As combinações entre as classes de equivalência foram usadas para criar os casos de teste. Cada teste inclui as condições específicas necessárias para verificar o comportamento esperado do sistema.

### Benefícios

Este padrão garante que:
- Todos os cenários possíveis sejam abordados, incluindo caminhos alternativos e situações de erro.
- A identificação de falhas seja mais eficaz, com testes organizados por categorias.
- Os testes sejam facilmente compreendidos, rastreáveis e reutilizáveis para cenários semelhantes.


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
---

## CT-05 - Recuperação de Senha

### Classes de Equivalência

| Condições de Entrada                 | Válidos                                 | Inválidos                             |
|--------------------------------------|-----------------------------------------|---------------------------------------|
| E-mail deve estar no formato correto | E-mail válido, ex.: "usuario@exemplo.com" (1) | E-mail inválido ou vazio (2)         |

### Casos de Testes

| Classes de Equivalência | Entradas                        | Resultados Esperados                       |
|--------------------------|--------------------------------|-------------------------------------------|
| 1                       | E-mail: "usuario@exemplo.com"  | Link de recuperação enviado corretamente |
| 2                       | E-mail: "usuario@"             | Erro: E-mail inválido                    |

---

## CT-06 - Controle de Acesso Não Autorizado

### Classes de Equivalência

| Condições de Entrada          | Válidos                | Inválidos                          |
|-------------------------------|------------------------|-------------------------------------|
| Acesso a área restrita sem login | Não logado (1)         | Logado ou bypass (2)               |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1                       | Tentar acessar "/controle" sem login       | Redirecionamento para login              |
| 2                       | Bypass no acesso sem login                 | Erro: Acesso concedido indevidamente     |

---

## CT-07 - Edição de Transação Existente

### Classes de Equivalência

| Condições de Entrada                  | Válidos                                        | Inválidos                             |
|---------------------------------------|------------------------------------------------|---------------------------------------|
| Transação deve existir no sistema     | Transação válida cadastrada (1)               | Transação inexistente (2)            |
| Valores de edição devem ser válidos   | Categoria e valor consistentes (3)            | Categoria inválida ou valores negativos (4) |

### Casos de Testes

| Classes de Equivalência | Entradas                                          | Resultados Esperados                      |
|--------------------------|--------------------------------------------------|-------------------------------------------|
| 1, 3                    | Editar "Alimentação R$50,00" para "Transporte R$60,00" | Transação atualizada corretamente         |
| 2, 3                    | Editar "Transação inexistente"                   | Erro: Transação não encontrada            |
| 1, 4                    | Editar "Alimentação R$50,00" para "Alimentação -R$20,00" | Erro: Valores inválidos                  |

---

## CT-08 - Exclusão de Meta Financeira

### Classes de Equivalência

| Condições de Entrada             | Válidos                   | Inválidos                              |
|----------------------------------|---------------------------|-----------------------------------------|
| Meta deve existir no sistema     | Meta válida cadastrada (1)| Meta inexistente (2)                   |

### Casos de Testes

| Classes de Equivalência | Entradas                  | Resultados Esperados                      |
|--------------------------|--------------------------|-------------------------------------------|
| 1                       | Excluir meta: "Viagem"   | Meta excluída corretamente               |
| 2                       | Excluir meta: "Não existe" | Erro: Meta não encontrada               |

---

## CT-09 - Verificação de Saldo Disponível

### Classes de Equivalência

| Condições de Entrada                  | Válidos                              | Inválidos                             |
|---------------------------------------|--------------------------------------|---------------------------------------|
| Transações devem estar cadastradas    | Transações válidas (1)               | Sem transações cadastradas (2)       |
| Valores devem ser consistentes        | Valores positivos e coerentes (3)    | Valores inconsistentes ou negativos (4) |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1, 3                    | Transações: [R$100 - Receita, R$50 - Despesa] | Saldo: R$50,00 atualizado corretamente    |
| 2                       | Transações: []                            | Erro: Nenhuma transação encontrada       |
| 1, 4                    | Transações: [R$100 - Receita, -R$50 - Despesa] | Erro: Valores inconsistentes             |

---

## CT-10 - Atualização de Dados do Usuário

### Classes de Equivalência

| Condições de Entrada                   | Válidos                             | Inválidos                             |
|----------------------------------------|-------------------------------------|---------------------------------------|
| Dados devem ser válidos e consistentes | Nome e e-mail corretos (1)          | Nome ou e-mail inválidos (2)          |

### Casos de Testes

| Classes de Equivalência | Entradas                                   | Resultados Esperados                      |
|--------------------------|-------------------------------------------|-------------------------------------------|
| 1                       | Nome: "João Silva", E-mail: "joao@exemplo.com" | Dados atualizados corretamente           |
| 2                       | Nome: "", E-mail: "joao@"                 | Erro: Dados inválidos                    |

