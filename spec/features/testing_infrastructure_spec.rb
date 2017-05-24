feature 'Testing infrastructure' do
  scenario 'Can check on the battle page and check its content' do
    visit('/battle')
    expect(page).to have_content('Hello Battle')
  end

  scenario 'Players can submit their names in a form' do
    visit ('/')
    fill_in('name1', with: 'Guillermo')
    fill_in('name2', with: 'Rita')
    click_button('Submit')
    expect(page).to have_text('Guillermo')
    expect(page).to have_content('Rita')
    expect(page).to have_content('vs')
  end
end
