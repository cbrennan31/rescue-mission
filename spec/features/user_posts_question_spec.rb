require 'rails_helper'

feature 'User visits new page' do
  scenario 'User posts a new question' do
    visit '/'
    click_on("Submit a question")

    fill_in 'Title', with: 'Is Earth flat?'
    fill_in 'question_description', with: 'This is a description longer than fifty characters about my question.'
    click_on("Create Question")

    expect(page).to have_content "Is Earth flat?"
    expect(page).to have_content 'Question successfully created.'
  end
end
