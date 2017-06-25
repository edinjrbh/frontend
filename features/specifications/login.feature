#language: pt

Funcionalidade: Login
  Sendo um usuário do site The internet Herouapp
  Posso logar no sistema
  E confirmar a mensagem de sucesso

Cenário: Login com Sucesso
  Dado que eu acesse o site The internet Herouapp
  Quando preencher os campos <login> e <password>
  E clicar no botão Login
  Então o exibe <mensagem> de login com sucesso
  E ao clicar no botão Logout
  Então o site exibe a mensagem deslogado com sucesso
