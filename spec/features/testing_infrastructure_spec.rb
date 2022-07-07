# in spec/features/testing_infrastructure_spec.rb

# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end


# in spec/features/enter_names_spec.rb

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Charlotte'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'

    save_and_open_page # will save the web page and open the browser to display it
    
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end