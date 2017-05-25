feature 'Testing infrastructure' do
  scenario 'Can check on the battle page and check its content' do
    visit('/battle')
    expect(page).to have_content('Hello Battle')
  end
end
