require 'capybara/dsl'

Dado('que eu acesso a página principal') do
    visit 'http://www.inmrobo.tk/accounts/login/' 
end       

Quando('eu faço login com {string} e {string}') do |usuario, senha|
    #@usuario = usuario
    LoginPage.new.fazLogin(usuario, senha)
end

Então('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end