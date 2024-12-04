### Objetivo do Teste

O teste automatizado tem como objetivo verificar o comportamento da página de login ao tentar realizar o login com dados inválidos.

### Descrição do Teste

```javascript
describe('Login com Dados Inválidos', () => {
  beforeEach(() => {
    // Visitar a página de login (ajustar o caminho conforme necessário)
    cy.visit('/views/login.html');
  });

  it('Deve exibir mensagem de erro ao tentar logar com dados inválidos', () => {
    // Preencher o campo de email com um valor inválido
    cy.get('#login-email').type('emailinvalido@dominio.com');
    
    // Preencher o campo de senha com um valor inválido
    cy.get('#login-senha').type('senhaerrada');
    
    // Submeter o formulário
    cy.get('#user-login-form').submit();
    
    // Verificar se a mensagem de erro é exibida após a tentativa de login inválido
    // Se a mensagem de erro estiver em algum elemento específico, ajuste o seletor conforme necessário
    cy.contains('Credenciais inválidas').should('be.visible');
    
    // Verificar se a URL não foi alterada (login falhou)
    cy.url().should('eq', 'http://localhost:3001/login'); // Ajuste a URL conforme necessário
    
    // Opcional: Verificar se o formulário permanece visível (indicando que o login falhou e o usuário está na mesma página)
    cy.get('#user-login-form').should('be.visible');
  });
});
