module Features
  def sign_in(user)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    within(".login") do
      click_on "Log In"
    end
  end
end

