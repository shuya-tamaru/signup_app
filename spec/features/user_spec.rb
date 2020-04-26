require 'rails_helper'

feature 'user', type: :feature do
  let(:user) { FactoryBot.create(:user) }

  scenario "user login-logout-test" do
    #ログインのテスト
    visit new_user_session_path
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button "Log in"
    expect(current_path).to eq root_path
    expect(page).to have_content('ログインしています')

    # ログアウトのテスト
    click_on("ログアウト")
    expect(current_path).to eq root_path
    expect(page).to have_content('ログイン')

  end
end