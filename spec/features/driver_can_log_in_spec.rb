require 'rails_helper'

RSpec.feature "As a driver" do
  scenario "I can log in" do

  Driver.create(first_name: "Driver", last_name: "Smith", phone: "64612345", email: "sergey@mail.com", password: "123", password_confirmation: "123")

  visit login_path
  fill_in "session[email]", with: "sergey@mail.com"
  fill_in "session[password]", with: "123"

  click_on "Submit"

  expect(current_path).to eq(drivers_path)
  expect(page).to have_content("Log Out")
  expect(page).to_not have_content("Log In")
  end
end
