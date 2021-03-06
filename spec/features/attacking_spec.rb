feature 'Attacking' do

  scenario 'Confirming Player 1 attacked Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Guillermo attacked Enrique')
  end

  scenario 'Player\'s 2 hit points are reduced when attacked' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).not_to have_content('Enrique: 100')
    expect(page).to have_content('Enrique: 90')
  end

  scenario 'attacking Player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    click_button('Attack')
    expect(page).to have_content('Enrique attacked Guillermo')
  end

  scenario 'Confirming Player 2 attacked Player 1' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    click_button('Attack')
    expect(page).to_not have_content('Guillermo attacked Enrique')
    expect(page).to have_content('Enrique attacked Guillermo')
  end

end
