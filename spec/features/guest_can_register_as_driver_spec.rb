require 'rails_helper'

RSpec.feature "as a guest"  do
  scenario "I can register a new driver account" do

    visit root_path

    click_on "Driver"
    expect(current_path).to eq(drivers_path)

    click_on "Create Account"
    expect(current_path).to eq(new_driver_path)

    fill_in :first_name, with: "Sergey"
    fill_in :last_name, with: "Smith"
    fill_in :phone, with: "6462516148"
    fill_in :email, with: "user@gmail.com"
    fill_in :driver_password, with: "123"
    fill_in :driver_password_confirmation, with: "123"

    click_on "Submit"

    expect(current_path).to eq(drivers_path)
    expect(page).to have_content("Log Out")
    expect(page).to_not have_content("Log In")
  end
end
