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
    sign_in_and_play

    # save_and_open_page # will save the web page and open the browser to display it

    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end


feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 60HP'
  end
end


feature 'Attack' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_on 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens!'
  end
end