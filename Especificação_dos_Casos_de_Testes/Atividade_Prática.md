# Atividade: Verificar se um número é par ou ímpar

## 1. Código Simples
```markdown
```python
def verificar_par_ou_impar(numero):
    """Verifica se o número é par ou ímpar."""
    if numero % 2 == 0:
        return "par"
    else:
        return "ímpar"
```

---

## **2. Caso de Teste**

| Entrada | Resultado Esperado | Critério de Aceitação                         |
|---------|--------------------|----------------------------------------------|
| 2       | "par"              | O programa deve retornar "par" para números divisíveis por 2. |
| 7       | "ímpar"            | O programa deve retornar "ímpar" para números não divisíveis por 2. |
| 0       | "par"              | O programa deve considerar 0 como um número par. |

---

## **3. Teste Automático (Opcional)**

```python
def test_verificar_par_ou_impar():
    assert verificar_par_ou_impar(2) == "par"
    assert verificar_par_ou_impar(7) == "ímpar"
    assert verificar_par_ou_impar(0) == "par"
    print("Todos os testes passaram.")

# Executar os testes
test_verificar_par_ou_impar()
```

---

### **Objetivo**
Compreender a lógica básica de verificação de paridade e realizar testes para validar o comportamento esperado.
```
