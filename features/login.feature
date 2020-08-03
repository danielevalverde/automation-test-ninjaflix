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
    E devo ver a mensagem de alerta <expected_msgm>

    Exemplos: 
        | email                |senha       | expected_msgm                      |
        | "tony@stark.com"     |  "senha"   | "Usuário e/ou senha inválidos"     |
        | "tony@.com"          |  "senha"   | "Usuário e/ou senha inválidos"     |
        |       ""             |  "senha"   | "Opps. Cadê o email?"              |
        | "tony@stark.com"     |       ""   | "Opps. Cadê a senha?"              |

# O teste será reexecutado enquanto tiver linhas na coluna, ou seja 4 vezes para este caso, substituindo os "placeholders" pelos dados nas colunas com os nomes correspondentes