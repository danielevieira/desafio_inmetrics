#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário 
    Posso acessar o sistema com o meu email e senha, previamente cadastrados.

        Contexto: Página principal
             Dado que eu acesso a página principal

        #dois cenarios, tentativa de login com 4 cenarios
        @logout
        Cenario: Usuario deve ser autorizado
            Quando eu faço login com "daniele alencar" e "123456"
            E devo ver a seguinte mensagem "Mostrando os registros de 1 a 8 de um total de 11"

        Esquema do Cenario: Tentativa de login com usuário inválido

            Quando eu faço login com "maria" e "xpto123"
            Então devo ver a seguinte mensagem "ERRO! Usuário ou Senha inválidos"

        Esquema do Cenario: Tentativa de login com senha inválido

            Quando eu faço login com "daniele alencar" e "123"
            Então devo ver a seguinte mensagem "ERRO! Usuário ou Senha inválidos"

        Esquema do Cenario: Tentativa de login com senha inválido

            Quando eu faço login com "daniele alenkar" e "123456"
            Então devo ver a seguinte mensagem "ERRO! Usuário ou Senha inválidos"

        Esquema do Cenario: Tentativa de login com usuário não cadastrado

            Quando eu faço login com "Igor Alves Costa" e "hdhgd12542"
            Então devo ver a seguinte mensagem "ERRO! Usuário ou Senha inválidos"