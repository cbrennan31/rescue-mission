require 'rails_helper'

feature 'User deletes a question' do
  scenario 'User deletes a question' do
    question = FactoryGirl.create(:question)

    visit "/"

    expect(page).to have_content question.title

    click_on('Delete')

    expect(page).not_to have_content question.title
  end
end
