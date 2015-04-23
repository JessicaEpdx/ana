require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the anagram path', {:type => :feature}) do
  it('processes user entry to see whether anagrams are listed') do
    visit('/')
    fill_in('first_word', :with => 'cat')
    fill_in('word_list', :with => 'tac,tca,dog,horse')
    click_button('Send')
    expect(page).to have_content('["tac", "tca"]')
  end
end
