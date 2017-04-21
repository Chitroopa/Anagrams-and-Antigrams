require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('allergies',{:type => :feature}) do
  it('processes user entry and returns whether two strings are anagram, palindrome or antigram') do
    visit('/')
    fill_in('first-string', :with => 'School master')
    fill_in('second-string', :with => 'The classroom')
    click_button('Check!')
    expect(page).to have_content('These words are anagrams.')
  end
end
