#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes no catálogo Ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

@login-with-success
Cenario: Acesso
    Quando eu faço login com "tony@stark.com" e "pwd123"
    Então devo ser atenticado
    E devo ver "Tony Stark" na área logada

@login-without-success
Esquema do Cenario: Logim sem sucesso
    Quando eu faço login com <email> e <senha>
    Então não devo ser autenticado
    E devo ver a mensagem de alerta <texto>

    Exemplos: 
        | email                |senha       | texto                                 |
        | "tony@stark.com"     |  "senha"   | "email ou senha inválida"             |
        | "tony@.com"          |  "senha"   | "usuário não cadastrado"              |
        |       " "            |  "senha"   | "Campo de e-mail deve ser preenchido" |
        | "tony@stark.com"     |       " "  | "Campo de senha deve ser preenchido"  |

# O teste será reexecutado enquanto tiver linhas na coluna, ou seja 4 vezes para este caso, substituindo os "placeholders" pelos dados nas colunas com os nomes correspondentes