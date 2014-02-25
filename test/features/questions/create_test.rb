require "test_helper"

feature "creating a question" do
  before :each do
    login
  end

  scenario "submit data to create a new question" do
    visit new_question_path
    fill_in "Question", with: questions(:one).question
    fill_in "Answer", with: questions(:one).answer
    click_on "Create Question"
    page.text.must_include "Question was successfully created"
  end
end
