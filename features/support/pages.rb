require 'capybara/dsl'
include Capybara::DSL

class LoginPage

    def fazLogin(usuario, senha)
        find('input[name=username]').set usuario
        find('input[name=pass]').set senha
        click_button 'Entre'
    end

end

class CadastrarPessoas

    def fazerCadastro(usuario, senha)
        find('input[name=username]').set usuario
        find('input[name=pass]').set senha
        find('input[name=confirmpass]').set senha

        click_button 'Cadastrar'
    end

    def acessarPaginaLogin()
        page.all(:link,"Login")[0].click
    end    
    
end