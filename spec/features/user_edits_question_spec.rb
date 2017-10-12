require 'rails_helper'

feature 'User visits show page' do
  scenario 'User edits question' do
    question = FactoryGirl.create(:question)

    visit '/'
    click_on(question.title)
    click_on('Edit Question')

    fill_in 'question_title', with: "Meaning of life?"
    fill_in 'question_description', with: "My feature tests are working! But I'm still really confused about the meaning of life."
    click_on("Submit Changes")

    expect(page).to have_content 'Meaning of life?'
    expect(page).to have_content "My feature tests are working! But I'm still really confused about the meaning of life."
    expect(page).to have_content "Question successfully updated."
  end
end
