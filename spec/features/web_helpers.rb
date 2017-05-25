def sign_in_and_play
  visit ('/')
  fill_in('player1_name', with: 'Guillermo')
  fill_in('player2_name', with: 'Enrique')
  click_button('Submit')
end
