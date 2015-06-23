module AuthenticationHelpers
  def admin_login(user)
    visit new_admin_session_path

    fill_in "admin[email]",    with: user.email
    fill_in "admin[password]", with: "123123123"

    click_button "Log in"
  end

  def admin_logout
    visit destroy_admin_session_path
  end
end