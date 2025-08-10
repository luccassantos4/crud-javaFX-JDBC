
# CRUD JavaFX + JDBC

Aplicação desktop desenvolvida em Java utilizando JavaFX para a interface gráfica e JDBC para integração com banco de dados MySQL. O sistema realiza operações de cadastro, consulta, atualização e remoção (CRUD) de vendedores e departamentos, com interface amigável e responsiva.

## Funcionalidades

- Cadastro, edição, listagem e remoção de **Vendedores**
- Cadastro, edição, listagem e remoção de **Departamentos**
- Interface gráfica moderna com JavaFX (FXML)
- Integração com banco de dados MySQL via JDBC
- Validação de dados e tratamento de exceções
- Separação em camadas (MVC, DAO, Services)

## Tecnologias Utilizadas

- Java 8+
- JavaFX
- JDBC
- MySQL

## Estrutura do Projeto

```
src/
    application/         # Inicialização da aplicação JavaFX
    db/                  # Conexão e exceções de banco de dados
    gui/                 # Telas FXML e controllers JavaFX
    model/
        dao/               # Interfaces e implementações DAO
        entities/          # Entidades (Seller, Department)
        exceptions/        # Exceções de validação
        services/          # Serviços de negócio
assets/
    crud_java.sql        # Script para criação do banco de dados
db.properties          # Configuração de acesso ao banco
```

## Pré-requisitos

- Java JDK 8 ou superior
- MySQL Server
- JavaFX SDK (caso necessário para seu ambiente)

## Configuração do Banco de Dados

1. Importe o arquivo `assets/crud_java.sql` no seu MySQL para criar as tabelas e dados iniciais:

```sql
-- Exemplo de importação via terminal
mysql -u root -p < assets/crud_java.sql
```

2. Ajuste o arquivo `src/db.properties` com as credenciais do seu banco:

```
user=SEU_USUARIO
password=SUA_SENHA
dburl=jdbc:mysql://localhost:3306/crud_java?verifyServerCertificate=false
useSSL=false
```

## Como Executar

1. Importe o projeto em sua IDE Java (Eclipse, IntelliJ, VS Code, etc.)
2. Certifique-se de que as dependências do JavaFX estejam configuradas
3. Execute a classe `application.MainCrud`

## Telas do Sistema

<div align="center">
    <h4>Tela Inicial</h4>
    <img height="440" width="710" src="https://user-images.githubusercontent.com/62127980/194787436-7b328ddb-8125-4360-8554-d4474cd539ac.jpg">
</div><br>

<div align="center">
    <h4>CRUD de Vendedores</h4>
    <img height="440" width="710" src="https://user-images.githubusercontent.com/62127980/194787440-81954b4c-0b21-4723-95c8-3c8187d5816e.jpg">
</div><br>

<div align="center">
    <h4>Cadastro de Vendedor</h4>
    <img height="440" width="710" src="https://user-images.githubusercontent.com/62127980/194787442-3465112f-edae-44fd-bcaf-5f58b00fc23d.jpg">
</div><br>

<div align="center">
    <h4>CRUD de Departamentos</h4>
    <img height="440" width="710" src="https://user-images.githubusercontent.com/62127980/194787444-66c4fe8b-8cc3-41f3-ba9f-8dd87c0a02f3.jpg">
</div><br>

<div align="center">
    <h4>Tela Sobre</h4>
    <img height="440" width="710" src="https://user-images.githubusercontent.com/62127980/194787446-a19ef06a-ade0-4fc7-8fa0-9f2c56789115.jpg">
</div><br>

## Observações

- O projeto utiliza padrão DAO para acesso a dados e MVC para organização das camadas.
- O script SQL já inclui dados de exemplo para testes.
- Para dúvidas sobre configuração do JavaFX, consulte a documentação da sua IDE.
