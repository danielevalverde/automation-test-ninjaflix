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
  