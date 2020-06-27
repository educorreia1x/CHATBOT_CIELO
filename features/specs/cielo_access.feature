Funcionalidade: Chatbot

    Contexto: Pagina do Chatbot Cielo
        Dado que o usuario acessa o chatboot

    Cenario: Acesso com sucesso # Resolver isso <>
        Quando o usuario selecionar o assunto "Esqueci minha senha - Acesso ao Site"
        E entrar com os dados
            | nome      | email           | telefone    | cpf         | cnpj           |
            | Igor Levi | teste@teste.com | 11111111111 | 13917279835 |                |
            | Igor Levi | teste@teste.com | 11111111111 |             | 09800708000100 |
        Entao o sistema deve exibir o nome do usuario

    Cenario: Nome invalido

        Quando o usuario selecionar o assunto "Esqueci minha senha - Acesso ao Site"
        E entrar com o nome "ee"
            | nome |
            | ee   |
        Entao o sistema exibe uma mensagem de alerta "Nome"

    Cenario: E-mail invalido

        Quando o usuario selecionar o assunto "Esqueci minha senha - Acesso ao Site"
        E entrar com o e-mail ""
            | email  |
            | !@.com |
        Entao o sistema exibe uma mensagem de alerta "E-mail inválido! Por favor forneça um e-mail válido."

    Cenario: CPF/CNPJ invalido # Arrumar <>

        Quando o usuario selecionar o assunto "Esqueci minha senha - Acesso ao Site"
        E entrar com os dados
            | cpf         | cnpj           |
            | 00000000000 |                |
            |             | 00000000000000 |
        Entao o sistema exibe uma mensagem de alerta "CPF ou CNPJ inválido! Por favor forneça um CPF ou CNPJ válido."

    Cenario: Tel invalido

        Quando o usuario selecionar o assunto "Esqueci minha senha - Acesso ao Site"
        E entrar com o numero de telefone ""
            | telefone    |
            | 00000000000 |
        Entao o sistema exibe uma mensagem de alerta "Digite seu telefone"

    Cenario: Campos obrigatorios
    
        Dado que temos as seguintes mensagens de alerta
            | mensagem                                    |
            | Campo obrigatério! Selecione uma opção.     |
            | Selecione um assunto                        |
            | Campo obrigatório! No mínimo 3 caracteres.  |
            | Campo obrigatório!                          |
            | Digite seu telefone                         |
            | Digite um CPF ou CNPJ válido!               |
        Quando o usuario entrar sem preencher os campos
        Entao o sistema deve exibir mensagem de alerta para todos os campos