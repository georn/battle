feature 'Players can submit their names' do
  scenario 'Players can submit their names in a form' do
    sign_in_and_play
    expect(page).to have_content('Guillermo')
    expect(page).to have_content('Enrique')
    expect(page).to have_content('vs.')
  end
end
