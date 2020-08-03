Quando(/^eu faço login com "([^"]*)" e "([^"]*)"$/) do |email, senha|
  visit "/"
  find("#emailId").set email
  find("#passId").set senha
  click_button "Entrar"
end
  
Então(/^devo ser atenticado$/) do
  expect(find(".search-form")).to_not be nil
end

Então(/^devo ver "([^"]*)" na área logada$/) do |expected_name|
  user = find(".sidebar-wrapper .user .info span")
  expect(user.text).to eql expected_name
end

Então(/^não devo ser autenticado$/) do
  expect(find("#emailId")).to_not be nil
  expect(page).to_not have_content "Cadastro de filmes"
end

Então(/^devo ver a mensagem de alerta "([^"]*)"$/) do |expected_msgm|
  alert = find(".alert")
  expect(alert.text).to eql expected_msgm
  expect(page).to have_content expected_msgm
end


# Então(/^devo ver a mensagem de alerta "([^"]*)"$/) do |expected_bane|
#   pending # Write code here that turns the phrase above into concrete actions
# end
