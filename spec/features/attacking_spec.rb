feature 'Attacking' do
  scenario 'attacking Player 2' do
    sign_in_and_play
    click_link('Attack Player 2')
    expect(page).to have_content('A attacked B')
  end
end
