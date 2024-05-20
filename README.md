# WalkDog Automation Project

Este repositório contém a automação de testes para o site [WalkDog](https://walkdog.vercel.app/) utilizando o Robot Framework.

## Índice

- [Visão Geral](#visão-geral)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Executando os Testes](#executando-os-testes)
- [Relatórios](#relatórios)
- [Contribuições](#contribuições)
- [Licença](#licença)

## Visão Geral

Este projeto foi desenvolvido para automatizar os testes do site WalkDog, que oferece serviços para donos de cães. A automação cobre os principais fluxos do usuário no site, garantindo que todas as funcionalidades críticas estejam funcionando conforme o esperado.

## Estrutura do Projeto

```plaintext
WalkDog-Automation/
├── tests/
│   ├── home.robot
│   ├── signup.robot
│   ├── resources/
│   │    ├── actions
│   │    │   ├──signupo.resources
│   │    ├── fixtures
│   │    ├── base.resources.robot
│   │    ├──env.resources.robot
├── logs/
│   └── ...
├── libs/
│   └── custom_libraries.py
├── .gitignore
├── README.md
├── requirements.txt
└── robot_settings.py
```

- **tests/**: Contém os arquivos de teste organizados por funcionalidades.
- **resources/**: Inclui arquivos reutilizáveis, como palavras-chave personalizadas e variáveis.
- **logs/**: Diretório onde os relatórios de teste serão gerados.
- **libs/**: Bibliotecas personalizadas para funções específicas que não são cobertas por bibliotecas padrão do Robot Framework.
- **requirements.txt**: Lista de dependências do projeto.
- **robot_settings.py**: Configurações específicas do Robot Framework.

## Pré-requisitos

- Python 3.x
- Robot Framework
- Browser Library

## Instalação

1. Clone o repositório:

    ```bash
    git clone https://github.com/KarinaMediani/RobotFramework.git
    ```

2. Crie um ambiente virtual (opcional, mas recomendado):

    ```bash
    python -m venv venv
    source venv/bin/activate  # Linux/MacOS
    .\venv\Scripts\activate  # Windows
    ```

3. Instale as dependências:

    ```bash
    pip install -r requirements.txt
    ```

## Relatórios

Os relatórios e logs de execução serão gerados no diretório `logs/`. Você pode visualizar o relatório principal abrindo o arquivo `logs.html` em seu navegador.

Desenvolvido por [Karina Mediani ](https://github.com/KarinaMediani)
```
