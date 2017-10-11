require 'rails_helper'

feature 'User visits show page' do
  scenario 'User views question details' do
    question = FactoryGirl.create(:question)
    answers = FactoryGirl.create_list(:question, 3, question_id: question.id)

    visit "/"
    click_on(question.title)

    expect(page).to have_content(question.title)
    expect(page).to have_content(question.description)
    answer.each do |answer|
      expect(page).to have_content(answer.description)
    end
  end
end
