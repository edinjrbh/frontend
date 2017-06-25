Dado(/^que eu acesse o site The internet Herouapp$/) do
	visit 'https://the-internet.herokuapp.com/login'
end

@Login
Quando(/^preencher os campos <login> e <password>$/) do
	login = ENV['USER']
	password = ENV['PASSWORD']
	find(:id, 'username').set(login)
	find(:id, 'password').set(password)
end

E(/^clicar no botão Login$/) do
	click_button 'Login'
end

Então(/^o exibe <mensagem> de login com sucesso$/) do
	msg = find(:id, 'flash').text
	expect(msg).to start_with('You logged into a secure area!')
end

E(/^ao clicar no botão Logout$/) do
  click_link 'Logout'
end

Então(/^o site exibe a mensagem deslogado com sucesso$/) do
	msg = find(:id, 'flash').text
	expect(msg).to start_with('You logged out of the secure area!')
end
