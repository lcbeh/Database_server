require 'spec_helper'

feature "My App" do
  scenario "user can add key and value info through url" do
    visit '/set?Fruit=Banana'
    expect(page).to have_content "Fruit"
  end
end
