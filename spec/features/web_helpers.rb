def sign_in_and_play
  visit ('/')
  fill_in('player1', with: 'Guillermo')
  fill_in('player2', with: 'Rita')
  click_button('Submit')
end
