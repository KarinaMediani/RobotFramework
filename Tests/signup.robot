*** Settings ***
Documentation        Suite de testes de cadastro de dog walker

Resource        ../resources/base.resources.robot
Library    XML
Library    OperatingSystem

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve poder cadastrar um novo dog walker
    [Tags]    smoke
    
    ${dog_walker}        Create Dictionary
    ...    name=Karina Mediani
    ...    email=teste@gmail.com
    ...    cpf=00012345678
    ...    cep=04534011
    ...    addressNumber=1000
    ...    addressDetails=casa 28
    ...    addressStreet=Rua Joaquim Floriano
    ...    addressDistrict=Itaim Bibi
    ...    addressCityUf=São Paulo/SP
    ...    cnh=toretto.jpg
    

    Go to Signup Page
    Fill signup form     ${dog_walker}                    
    Submit signup form
    Popup should be        Recebemos o seu cadastro e em breve retornaremos o contato.

Não deve cadastrar se os campos obrigatórios não forem preenchidos
    [Tags]    required    
    
    Go to Signup Page
    Submit signup form

    Alert should be    Informe o seu nome completo
    Alert should be    Informe o seu melhor email
    Alert should be    Informe o seu CPF
    Alert should be    Informe o seu CEP
    Alert should be    Informe um número maior que zero
    Alert should be    Adcione um documento com foto (RG ou CHN) 

Não deve cadastrar se o CPF foi incorreto
    [Tags]    cpf_inv
    
    ${dog_walker}        Create Dictionary
    ...    name=Karina Mediani
    ...    email=teste@gmail.com
    ...    cpf=000123456aa
    ...    cep=04534011
    ...    addressNumber=1000
    ...    addressDetails=casa 28
    ...    addressStreet=Rua Joaquim Floriano
    ...    addressDistrict=Itaim Bibi
    ...    addressCityUf=São Paulo/SP
    ...    cnh=toretto.jpg    

    Go to Signup Page
    Fill signup form     ${dog_walker}                    
    Submit signup form
    Alert should be    CPF inválido

Deve poder cadastrar um novo dog walker que sabe cuidar de pets
    [Tags]    aservice
    ${dog_walker}        Create Dictionary
    ...    name=Dominic Toretto
    ...    email=toretto@gmail.com
    ...    cpf=00012345678
    ...    cep=04534011
    ...    addressNumber=1000
    ...    addressDetails=casa 28
    ...    addressStreet=Rua Joaquim Floriano
    ...    addressDistrict=Itaim Bibi
    ...    addressCityUf=São Paulo/SP
    ...    cnh=toretto.jpg
     

    Go to Signup Page
    Fill signup form     ${dog_walker}    
    Additional service    Cuidar                
    Submit signup form
    Popup should be        Recebemos o seu cadastro e em breve retornaremos o contato.

Deve poder cadastrar um novo dog walker que sabe adestrar pets
    [Tags]    aservice
    ${dog_walker}        Create Dictionary
    ...    name=Roberto Justus 
    ...    email=rjustus@gmail.com
    ...    cpf=00012345678
    ...    cep=04534011
    ...    addressNumber=1000
    ...    addressDetails=casa 28
    ...    addressStreet=Rua Joaquim Floriano
    ...    addressDistrict=Itaim Bibi
    ...    addressCityUf=São Paulo/SP
    ...    cnh=toretto.jpg
   

    Go to Signup Page
    Fill signup form     ${dog_walker} 
    Additional service    Adestrar                   
    Submit signup form
    Popup should be        Recebemos o seu cadastro e em breve retornaremos o contato.