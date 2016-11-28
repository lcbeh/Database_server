require 'spec_helper'
require 'json'

describe "File" do

  it "saves data" do
    visit '/set?Fruit=Banana'
    file = File.read('public/data.json')
    expect(file).to include("Fruit")
  end
end
