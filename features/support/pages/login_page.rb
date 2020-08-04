class LoginPage
  include Capybara::DSL
  def go
    visit "/login"
  end

  def log_in(email,password)
    find("#emailId").set email
    find("#passId").set password
    click_button "Entrar"
  end

end