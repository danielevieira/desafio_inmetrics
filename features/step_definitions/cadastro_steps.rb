require 'capybara/dsl'

Dado('que eu acesso a página de cadastro') do
    visit 'http://www.inmrobo.tk/accounts/signup/' 
  end
  
  Quando('vejo a opção de login') do
    expect(page).to have_content 'Login'
  end
  
  Então('eu clico no botão de login e sou direcionada para pagina de login') do
    #acessarPaginaLogin()
    CadastrarPessoas.new.acessarPaginaLogin()
  end
  