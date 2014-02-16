Given "a game has started" do
  visit "/"
  p page.body
  click_link "Start game"
end

Then "the category choice should be shown" do
  expect(page).to have_css ".question-choice .option"
end

When "team one pick a category" do
  click_link "lion"
end

Then "the first clue should be shown" do
  expect(page).to have_text "Clue one"
end
