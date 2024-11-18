| **Identificador**         | CT-01 - Registrar Nova Despesa Financeira          |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se o sistema salva corretamente uma despesa com os dados fornecidos. |
| **Entradas**              | - Categoria: "Alimentação"                         |
|                           | - Valor: R$50,00                                   |
|                           | - Data: "2024-11-17"                               |
| **Resultados Esperados**  | - A despesa deve ser registrada na lista de transações com os detalhes fornecidos. |
|                           | - O valor deve ser contabilizado corretamente no total de despesas para a categoria correspondente. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - A despesa é salva com todos os detalhes fornecidos. |
|                           |     - A transação aparece corretamente no gráfico de despesas, atualizando os valores totais. |
|                           | - **Rejeição:**                                    |
|                           |     - O sistema não salva os dados fornecidos.     |
|                           |     - Informações inconsistentes no gráfico ou na lista de transações. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados configurado com categorias predefinidas. |
|                           | - **Ferramentas:** Selenium para automação de testes de interface; Postman para verificar API de registro de despesas. |
| **Restrições de Uso**      | - Todos os campos obrigatórios (categoria, valor e data) devem ser preenchidos. |
|                           | - O valor da despesa deve ser maior que R$0,00.    |
| **Dependências**          | - Este caso de teste depende do caso de teste "Cadastrar Categoria de Despesa", garantindo que a categoria "Alimentação" esteja disponível no sistema. |
| **Observações Adicionais** | - Testar a funcionalidade com diferentes categorias, valores e datas para verificar a robustez do sistema. |
|                           | - Documentar quaisquer erros ou comportamentos inesperados, como sobreposição de dados ou falhas na atualização do gráfico. |
|                           | - Verificar a compatibilidade com diferentes formatos de data. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-02 - Criar Meta Financeira                      |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se o sistema permite a criação de uma meta financeira. |
| **Entradas**              | - Meta: "Economizar para viagem"                   |
|                           | - Valor: R$5.000,00                                |
|                           | - Data Limite: "2024-12-31"                        |
| **Resultados Esperados**  | - A meta deve ser criada e exibida na lista de metas. |
|                           | - Os dados devem estar corretos e associados ao progresso financeiro. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - A meta é registrada corretamente com os dados fornecidos. |
|                           |     - A meta aparece nas seções de progresso e os valores são calculados adequadamente. |
|                           | - **Rejeição:**                                    |
|                           |     - A meta não é registrada no sistema.          |
|                           |     - Aparecem erros ou inconsistências nos cálculos de progresso. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados configurado para armazenar metas financeiras. |
|                           | - **Ferramentas:** Selenium para automação de testes de interface; Postman para verificar API de criação de metas. |
| **Restrições de Uso**      | - A meta financeira deve ter um valor positivo maior que zero. |
|                           | - A data limite não pode ser anterior à data atual. |
| **Dependências**          | - Este caso de teste depende do caso de teste "Registrar Nova Despesa Financeira", garantindo que o progresso financeiro seja calculado corretamente. |
| **Observações Adicionais** | - Testar diferentes combinações de valores, metas e datas para garantir a consistência do sistema. |
|                           | - Documentar quaisquer falhas ou erros relacionados à criação de metas ou cálculos de progresso. |
|                           | - Verificar se o progresso é atualizado dinamicamente ao registrar despesas relacionadas à meta. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-03 - Login com Dados Inválidos                  |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Testar o comportamento do sistema ao realizar login com dados incorretos. |
| **Entradas**              | - E-mail: "usuario@exemplo.com"                    |
|                           | - Senha: "senhaerrada"                             |
| **Resultados Esperados**  | - O sistema deve exibir a mensagem "E-mail ou senha incorretos". |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Mensagem de erro clara e sem acesso ao sistema. |
|                           | - **Rejeição:**                                    |
|                           |     - Sistema permite acesso indevido.             |
|                           |     - Mensagens de erro genéricas ou confusas.     |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com usuários cadastrados. |
|                           | - **Ferramentas:** Selenium para automação de testes de interface. |
| **Restrições de Uso**      | - O sistema deve bloquear múltiplas tentativas consecutivas de login falhas. |
| **Dependências**          | - Este caso de teste é independente de outros.     |
| **Observações Adicionais** | - Realizar testes com diferentes combinações de e-mails e senhas inválidas para maior cobertura. |
|                           | - Documentar quaisquer mensagens de erro fora do padrão esperado. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-04 - Gerar Gráfico de Despesas Mensais          |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se o gráfico de despesas mensais é gerado corretamente com base nos dados disponíveis. |
| **Entradas**              | - Transações: [R$200,00 - Alimentação, R$100,00 - Transporte]. |
| **Resultados Esperados**  | - O gráfico deve exibir os valores categorizados corretamente com barras ou fatias proporcionais. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Gráfico reflete as transações com categorização exata. |
|                           | - **Rejeição:**                                    |
|                           |     - Valores incorretos ou gráficos desproporcionais. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com transações cadastradas. |
|                           | - **Ferramentas:** Selenium para automação de interface e análise visual. |
| **Restrições de Uso**      | - Gráficos devem ser gerados apenas com transações válidas e categorizadas. |
| **Dependências**          | - Este caso de teste depende do caso de teste "Registrar Nova Despesa Financeira". |
| **Observações Adicionais** | - Testar com diferentes combinações de valores e categorias para validar a geração correta. |
|                           | - Verificar a responsividade e a exibição em dispositivos móveis. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-05 - Recuperação de Senha                       |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se o sistema permite a recuperação de senha por e-mail. |
| **Entradas**              | - E-mail: "usuario@exemplo.com"                    |
| **Resultados Esperados**  | - O sistema envia um link de recuperação para o e-mail informado. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - E-mail de recuperação enviado corretamente.  |
|                           |     - Link enviado funciona e permite redefinição de senha. |
|                           | - **Rejeição:**                                    |
|                           |     - Link não é enviado ou não funciona.          |
|                           |     - Mensagem de erro inadequada para e-mails inválidos. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com usuários cadastrados. |
|                           | - **Ferramentas:** Postman para verificar envio de e-mails; Selenium para validação da interface. |
| **Restrições de Uso**      | - O sistema deve validar o formato do e-mail antes de tentar envio. |
|                           | - Links de recuperação devem expirar após um tempo configurado. |
| **Dependências**          | - Este caso de teste é independente de outros.     |
| **Observações Adicionais** | - Verificar o comportamento do sistema com e-mails inexistentes ou não cadastrados. |
|                           | - Documentar problemas de latência no envio de e-mails. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-06 - Controle de Acesso Não Autorizado          |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Testar se usuários não logados conseguem acessar áreas restritas do sistema. |
| **Entradas**              | - Acesso à URL de controle de despesas sem login.  |
| **Resultados Esperados**  | - O sistema redireciona o usuário para a página de login. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Redirecionamento correto para a página de login. |
|                           |     - Nenhum dado de área restrita é exibido.      |
|                           | - **Rejeição:**                                    |
|                           |     - Acesso concedido indevidamente à área restrita. |
|                           |     - Mensagem de erro inadequada ou ausência de redirecionamento. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Configuração com URLs protegidas. |
|                           | - **Ferramentas:** Postman para testar acesso às APIs; Selenium para validação de interface. |
| **Restrições de Uso**      | - Apenas usuários autenticados devem acessar áreas restritas. |
| **Dependências**          | - Este caso de teste é independente de outros.     |
| **Observações Adicionais** | - Testar com diferentes URLs de áreas restritas para garantir cobertura. |
|                           | - Documentar quaisquer problemas relacionados à segurança. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-07 - Edição de Transação Existente              |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se uma transação existente pode ser editada. |
| **Entradas**              | - Transação: [Alimentação, R$50,00].               |
|                           | - Editar para: [Transporte, R$60,00].              |
| **Resultados Esperados**  | - A transação é atualizada corretamente no sistema. |
|                           | - Os dados refletem as alterações tanto na lista quanto nos gráficos de despesas. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Alterações salvas e refletidas corretamente no sistema. |
|                           | - **Rejeição:**                                    |
|                           |     - Alterações não são salvas.                   |
|                           |     - Inconsistências nos dados ou gráficos de despesas. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com transações cadastradas. |
|                           | - **Ferramentas:** Selenium para automação de interface; Postman para verificar API de edição de transações. |
| **Restrições de Uso**      | - Apenas transações existentes podem ser editadas. |
| **Dependências**          | - Este caso de teste depende do caso de teste "Registrar Nova Despesa Financeira". |
| **Observações Adicionais** | - Verificar o comportamento com diferentes combinações de categorias, valores e datas. |
|                           | - Documentar problemas como erros ao salvar ou sobreposição de dados. |

<br/>
<br/>
<br/>

---
| **Identificador**         | CT-08 - Exclusão de Meta Financeira                |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se uma meta financeira pode ser excluída corretamente. |
| **Entradas**              | - Meta: "Economizar para viagem".                  |
| **Resultados Esperados**  | - A meta é removida da lista sem impactar outras funcionalidades ou metas existentes. |
|                           | - O progresso financeiro é ajustado adequadamente. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Meta excluída sem erros.                     |
|                           |     - Progresso e gráficos ajustados corretamente. |
|                           | - **Rejeição:**                                    |
|                           |     - Meta não é excluída.                         |
|                           |     - Exclusão impacta cálculos de outras metas ou dados relacionados. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com metas financeiras cadastradas. |
|                           | - **Ferramentas:** Selenium para automação de interface; Postman para validar API de exclusão de metas. |
| **Restrições de Uso**      | - Apenas metas existentes podem ser excluídas.    |
| **Dependências**          | - Este caso de teste é independente de outros.     |
| **Observações Adicionais** | - Verificar se o progresso de outras metas permanece intacto após exclusão. |
|                           | - Documentar comportamentos inesperados, como erros de integridade de dados. |

| **Identificador**         | CT-09 - Verificação de Saldo Disponível            |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Testar se o saldo disponível reflete corretamente todas as transações registradas. |
| **Entradas**              | - Transações:                                      |
|                           |     - R$100,00 - Receita                           |
|                           |     - R$50,00 - Despesa                            |
| **Resultados Esperados**  | - O saldo disponível é atualizado corretamente para R$50,00. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Cálculo correto e consistente do saldo.      |
|                           | - **Rejeição:**                                    |
|                           |     - Saldo incorreto ou divergências nos cálculos apresentados. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com transações registradas. |
|                           | - **Ferramentas:** Selenium para validação visual; Postman para verificar API de cálculo de saldo. |
| **Restrições de Uso**      | - Todas as transações devem ser registradas antes do cálculo do saldo. |
| **Dependências**          | - Este caso de teste depende do caso de teste "Registrar Nova Despesa Financeira" e "Registrar Nova Receita". |
| **Observações Adicionais** | - Testar com diferentes combinações de receitas e despesas para validar a consistência. |
|                           | - Verificar o impacto em gráficos de saldo e relatórios financeiros. |
<br/>
<br/>
<br/>

---
| **Identificador**         | CT-10 - Atualização de Dados do Usuário            |
|---------------------------|----------------------------------------------------|
| **Descrição**             | Verificar se o sistema permite a atualização dos dados cadastrais do usuário. |
| **Entradas**              | - Nome: "João Silva"                               |
|                           | - E-mail: "joao.silva@exemplo.com"                 |
| **Resultados Esperados**  | - Dados atualizados com sucesso e visíveis corretamente no perfil do usuário. |
| **Critérios para Aprovação/Rejeição** | - **Aprovação:**                        |
|                           |     - Alterações refletem corretamente no sistema. |
|                           | - **Rejeição:**                                    |
|                           |     - Dados não são atualizados.                   |
|                           |     - Inconsistências ou erros na visualização dos dados atualizados. |
| **Recursos para o Caso de Teste** | - **Ambiente de Teste:** Banco de dados com dados cadastrais de usuários. |
|                           | - **Ferramentas:** Selenium para automação de interface; Postman para validar API de atualização de usuários. |
| **Restrições de Uso**      | - Apenas usuários autenticados podem alterar seus dados. |
| **Dependências**          | - Este caso de teste é independente de outros.     |
| **Observações Adicionais** | - Verificar se o sistema envia confirmação de e-mail ao alterar o endereço de e-mail. |
|                           | - Testar com diferentes combinações de dados para garantir a robustez do sistema. |


