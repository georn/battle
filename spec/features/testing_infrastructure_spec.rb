feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario 'Can check on the battle page and check its content' do
    visit('/battle')
    expect(page).to have_content('Hello Battle')
  end
end
