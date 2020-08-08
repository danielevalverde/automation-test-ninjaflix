Funcionalidade: Cadastro de filmes
  Para que eu possa disponibilizar novos titulos no catalogo
  sendo um gestor de catalogo
  Posso cadastrar um novo filme 

Esquema do Cenario: Novo filme
    Dado que <titulo> é um novo filme
    E o status deste filme é <status>
    E o ano de lançamento é <ano>
    E a data de estréia é <data>
    E os atores são <atores>
    E a sinopse do filme é <sinopse>
    E escolhi uma <capa> muito bonita
    Quando eu faço o cadastro deste filme
    Então devo ver o novo filme na lista

    Exemplos:
    |titulo|status|ano|data|atores|snopse|capa|
    |Vingadores Ultimato|Disponivel|2019|24/04/2019|Robert Downey Jr, Crhis Evans, Brie Larson, Scarlett Johansson|Após Thanos eliminar metade do universo, os vingadores terão que resolver essa situação|capa.png|
    |Homem Aranha Longe de Casa|2019|04/07/2019|Tom Holland, Samuel L. Jackson, Marisa Tomei|Peter Parker está em uma viagem pela Europa e é convocado por Nick Fury para uma missão.|capa.png|
    |Coringa|2019|31/08/2020|Joaquin Phoenix|O comediante falido Arthur Fleck encontra violentos banidos pelas ruas de Gothan City|capa.png|

  Cenario: Sem nome
    Quando eu tento cadastrar um filme sem o nome
    Então devo ver a notificação "Oops - Filme sem titulo. Pode isso Arnaldo"

  Cenario: Sem status
    Quando eu tento cadastrar um filme sem o status
    Então devo ver a notificação "Oops - Faltou o ano de lançamento também!"
  
  Cenario: Data de estréia não informada
    Quando eu tento cadastrar um filme sem a data de estréia
    Então devo ver a notificação "Oops - Quase lá, só falta a data de estréia!"

   Cenario: Duplicado
    Dado que "Deadpool 2" já foi cadastrado
    Quando eu faço o cadastro deste filme
    Então devo ver a notificação "Oops - Este título já existe no Ninjaflix!"

    
    