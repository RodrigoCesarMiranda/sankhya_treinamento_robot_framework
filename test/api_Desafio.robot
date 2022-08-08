*** Settings ***    

Resource    ../resource/api/api_Desafio.resource

*** Test Cases ***
Pegar todos os usuarios ja cadastrados e printar a qtd dos usuarios ja cadastrados
    Dado que tenho os dados para efetuar o servico list_all_users
    Quando executo servico list_all_users
   # Entao valido a o status code da request


#Cadastro um novo usuario de "nome" e "sobrenome"
 #   [Teardown]    Deletar usuario criado
  #  Dado que tenho os dados para efeturar o serviço create_user
   # Quando executo servico create_user
    #Valido se usuario foi criado utilizando a request de get_user