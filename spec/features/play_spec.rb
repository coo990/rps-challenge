feature 'Clicking RPS links' do
  scenario 'chooses rock' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content "You chose Rock!"
  end

  feature 'Clicking Paper' do
    scenario 'clicks paper' do
      sign_in_and_play
      click_link 'Paper'
      expect(page).to have_content "You chose Paper!"
    end
  end

  feature 'Clicking Scissors' do
    scenario 'clicks scissors' do
      sign_in_and_play
      click_link 'Scissors'
      expect(page).to have_content "You chose Scissors!"
    end
  end
end
