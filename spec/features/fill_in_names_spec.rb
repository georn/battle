feature 'Players can submit their names' do
  scenario 'Players can submit their names in a form' do
    sign_in_and_play
    expect(page).to have_content('A')
    expect(page).to have_content('B')
    expect(page).to have_content('vs.')
  end
end
