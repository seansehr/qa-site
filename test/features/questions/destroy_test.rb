require "test_helper"

feature "destroying a question" do
  scenario "submit data to destroy a new question" do
    login
    visit questions_path
    question = questions(:one)
    find("a[href='#{question_path(question)}'][data-method='delete']").click
    page.text.must_include "#{question.question} was successfully destroyed"
  end
end
