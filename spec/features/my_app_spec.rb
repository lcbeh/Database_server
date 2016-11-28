require 'spec_helper'

feature "My App" do
  scenario "user can add key and value info through url" do
    visit '/set?Fruit=Banana'
    expect(page).to have_content "{\"Fruit\"=>\"Banana\"}"
  end

  scenario "user can view value by entering key on url" do
    visit '/set?Fruit=Banana'
    visit '/get?key=Fruit'
    expect(page).to have_content "Banana"
    expect(page).not_to have_content "Fruit"
  end

end
