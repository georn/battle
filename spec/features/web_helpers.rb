def sign_in_and_play
  visit ('/')
  fill_in('player1_name', with: 'A')
  fill_in('player2_name', with: 'B')
  click_button('Submit')
end
