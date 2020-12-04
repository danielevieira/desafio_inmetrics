#language:pt


Funcionalidade: Cadastro
    Acessar a tela de login quando eu estiver na tela de cadastro

    Contexto: Página de cadastro
        Dado que eu acesso a página de cadastro

        #dois cenarios, tentativa de login com 4 cenarios
        Cenario: Usuário deve acessar a pagina de login
            Então eu clico no botão de login e sou direcionada para pagina de login