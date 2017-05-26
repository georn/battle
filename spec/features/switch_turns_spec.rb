feature "Players can see that it's their turn" do
  scenario "The game starts with Player 1's turn" do
    sign_in_and_play
    expect(page).to have_content("It's Guillermo's turn")
  end

  scenario 'Turn switch after an attack' do
    sign_in_and_play
    click_button('Attack')
    click_button('Ok')
    expect(page).to_not have_content('It\'s Guillermo\'s turn')
    expect(page).to have_content('It\'s Enrique\'s turn')
  end
end
