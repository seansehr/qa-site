require "test_helper"

feature "Editing a question" do
  scenario "submit form data to edit a question" do
    login
    visit edit_question_path(questions(:one))
    fill_in "Question", with: questions(:two).question
    click_on "Update Question"
    page.text.must_include "Question was successfully updated."
    page.text.must_include users(:one).email
  end
end
