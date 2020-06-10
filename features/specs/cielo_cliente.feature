Funcionalidade: Chatbot

    Contexto: Assuntos disponiveis
        Dado que temos os seguintes assuntos
            | assuntos                                          |
            | Esqueci minha senha - Acesso ao Site              |
            | Informações sobre taxas e prazo de Recebimentos   |
            | Solicitar Informe de Rendimentos - DIRF 2020      |
            | Quero antecipar minhas vendas                     |
            | Informações sobre Vendas, Recebimentos e Extratos |
            | Quero mais uma máquina                            |
            | Quero outras informações                          |
            | Suporte Técnico                                   |
        Quando o usuario acessa o Chatbot
        E ja e cliente Cielo
        Entao podera ver todos os assuntos disponiveis


    Cenario: Recuperar senha
        Quando o usuario selecionar "Esqueci minha senha - Acesso ao Site"
        E entrar com seus dados
        Entao o sistema deve exibir o numero de protocolo
        Quando o usuario enviar uma pergunta "Esqueci minha senha"
        Entao o sistema deve exibir o passo a passo para recuperar a senha

    Cenario: Taxas e prazo de Recebimentos
        Quando o usuario selecionar "Informações sobre taxas e prazo de Recebimentos"
        E entrar com seus dados
        Entao o sistema deve exibir o numero de protocolo
        Quando o usuario enviar uma pergunta "taxas"
        Entao o sistema deve exibir o passo a passo para consultar as taxas


    Cenario: Informe de Rendimentos
        Quando o usuario selecionar "Solicitar Informe de Rendimentos - DIRF 2020"
        E entrar com seus dados
        Entao o sistema deve exibir o numero de protocolo
        Quando o usuario enviar uma pergunta "DIRF 2020"
        Entao o sistema deve exibir o passo a passo para consultar o DIRF 

    # Cenario: Informações sobre Vendas, Recebimentos e Extratos
    #     Quando o usuario selecionar "Informações sobre Vendas, Recebimentos e Extratos"
    #     E entrar com seus dados
    #     Entao o sistema deve exibir o numero de protocolo
    #     E deve exibir duas sugestoes de perguntas
    #     Quando o usuario selecionar "Quero informações sobre vendas e recebimento"
    #     Entao o sistema deve exibir uma lista de sugestoes para a duvida desejada
    #     | duvidas                                             |
    #     | Como eu faço um cancelamento de vendas?             |
    #     | Como eu verifico as minhas vendas realizadas?       |
    #     | Quero informações sobre os meus recebimentos        |
    #     | Como eu vejo o meu extrato de antecipação?          |
    #     | Quero saber as minhas taxas e prazo de recebimentos |
    #     | Quanto eu ganho se eu realizar recarga de celular   |
    #     | Não achei o que eu queria                           |
    #     Quando o usuario selecionar 

    Cenario: Quero mais uma máquina
        Quando o usuario selecionar "Quero mais uma máquina"
        E entrar com seus dados
        Entao o sistema deve exibir quatro sugestoes de faturamento
            | sugestoes                |
            | Até R$500,00             |
            | De R$500,00 a R$5.000,00 |
            | De R$500,00 a R$5.000,00 |
            | Mais de R$ 10.000,00     |
        Quando selecionar uma das sugestoes
        Entao o sistema deve exibir a maquina adequada para o tipo de faturamento escolhido

    # Cenario: Outras informações
    #     Quando o usuario selecionar "Quero outras informações"
    #     E entrar com seus dados
    #     Entao o sistema deve exibir o numero de protocolo
    #     E uma lista com sugestoes de assuntos
    #         | sugestoes|
    #         | Preciso da DIRF (Declaração do Imposto de Renda Retido na Fonte)   |
    #         | Quero informações sobre os dados cadastrais do meu estabelecimento |
    #         | Quero informações sobre vendas e recebimento                       |
    #         | Gostaria de informações de acesso ao site                          |
    #         | Eu sou ecommerce                                                   |
    #         | Quero falar sobre outro assunto                                    |
    #     Quando o usuario selecionar "Quero falar sobre outro assunto"
    #     Entao o usuario sera redirecionado para o atendimento com o operador online
    #     E o sistema devera exibir o nome do atendente
    
    
    # atendimento com operador real

    Cenario: Antecipar minhas vendas
        Quando o usuario selecionar "Quero antecipar minhas vendas"
        E entrar com seus dados
        Entao o usuario sera redirecionado para o atendimento com o operador online
        E o sistema devera exibir o nome do atendente

    Cenario: Suporte Técnico
        Quando o usuario selecionar "Suporte Técnico"
        E entrar com seus dados
        Entao o usuario sera redirecionado para o atendimento com o operador online
        E o sistema devera exibir o nome do atendente
