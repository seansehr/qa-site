require "test_helper"

feature "creating a question" do
  scenario "submit data to create a new question" do
    login
    visit new_question_path
    fill_in "Question", with: questions(:one).question
    fill_in "Answer", with: questions(:one).answer
    click_on "Create Question"
    page.text.must_include "Question was successfully created"
    page.text.must_include users(:one).email
  end
end
