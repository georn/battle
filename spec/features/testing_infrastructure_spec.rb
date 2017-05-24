feature 'Testing infrastructure' do
  scenario 'Can check on the battle page and check its content' do
    visit('/battle')
    expect(page).to have_content('Hello Battle')
  end

  scenario 'Players can submit their names in a form' do
    visit ('/')
    fill_in('player1', with: 'Guillermo')
    fill_in('player2', with: 'Rita')
    click_button('Submit')
    expect(page).to have_content('Guillermo')
    expect(page).to have_content('Rita')
    expect(page).to have_content('vs')
  end

  scenario 'Player 1 can see player\'s 2 health ' do
    visit ('/')
    fill_in('player1', with: 'Guillermo')
    fill_in('player2', with: 'Rita')
    click_button('Submit')
    expect(page).to have_content 'Rita: 100'
  end
end
