RSpec.feature "Attack player", :type => :feature do

  scenario 'attacking player two' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Nomi attacked Julie')
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("Nomi reduced Julie's HP to 50")
  end

end
