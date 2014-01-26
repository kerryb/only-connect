Given "a game has started" do
  visit "/"
  click_link "Start game"
end

Then "the category choice should be shown" do
  expect(page).to have_css ".question-choice .option"
end
