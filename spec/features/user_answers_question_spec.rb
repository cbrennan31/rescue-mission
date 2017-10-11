require 'rails_helper'

feature 'User posts an answer' do
  scenario 'User answers a question' do
    question = FactoryGirl.create(:question)
    answer = FactoryGirl.create(:answer, question_id: question.id)

    visit "/"
    click_on(question.title)
    click_on('Submit an answer')

    fill_in 'answer_description', with: 'This is an answer to your question that is longer than fifty characters.'
    click_on("Submit Answer")

    expect(page).to have_content 'This is an answer to your question that is longer than fifty characters.'
  end
end
