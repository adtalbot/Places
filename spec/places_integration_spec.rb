require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the place list path', {:type => :feature}) do
  it('takes a place input from user and adds it to a list of places') do
    visit('/')
    fill_in('description', :with => 'Georgia')
    click_button('Submit')
    expect(page).to have_content('Georgia')
  end
end
