feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Enrique: 100')
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Guillermo: 100')
  end

  scenario 'see Player 2 hit points fall' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).to_not have_content('Enrique: 100')
    expect(page).to have_content('Enrique: 90')
  end

  scenario 'see Player 1 hit points fall' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    click_button('Attack')
    click_button('Ok')
    expect(page).to_not have_content('Guillermo: 100')
    expect(page).to_not have_content('Enrique: 80')
    expect(page).to have_content('Guillermo: 90')
  end
end
