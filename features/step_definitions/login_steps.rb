Quando(/^eu faço login com "([^"]*)" e "([^"]*)"$/) do |email, senha|
  visit "/"
  find("#emailId").set email
  find("#passId").set senha
  click_button "Entrar"
end
  
Então(/^devo ser atenticado$/) do
  expect(find(".search-form")).to_not be nil
end

Então(/^devo ver "([^"]*)" na área logada$/) do |expect_name|
  user = find(".sidebar-wrapper .user .info span")
  expect(user.text).to eql expect_name
end

Então(/^não devo ser autenticado$/) do
  expect(find("#emailId")).to_not be nil
  expect(page).to_not have_content "Cadastro de filmes"
end

Então(/^devo ver a mensagem de alerta "([^"]*)"$/) do |arg1|
  alert = find(".alert")
  expect(alert.text).to eql "Usuário e/ou senha inválidos"
end