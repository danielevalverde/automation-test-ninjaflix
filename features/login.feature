#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes no catálogo Ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

@login
Cenario: Acesso
    Quando eu faço login com "tony@stark.com" e "pwd123"
    Então devo ser atenticado
    E devo ver "Tony Stark" na área logada

Cenario: Senha invalida
    Quando eu faço login com "tony@stark.com" e "senha"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "email ou senha inválida"

Cenário: Usuário não existe
    Quando eu faço login com "tony@.com" e "senha"
    Então não devo ser autenticado 
    E devo ver a mensagem de alerta "usuário não cadastrado"

Cenário: Email não informado 
    Quando eu faço login com " " e "senha"
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Campo de e-mail deve ser preenchido"

Cenário: Senha não informada
    Quando eu faço login com "teste" e " " 
    Então não devo ser autenticado
    E devo ver a mensagem de alerta "Campo de senha deve ser preenchido"