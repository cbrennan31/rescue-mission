require 'rails_helper'

feature 'User visits index page' do
  scenario 'User views all questions' do
    questions = FactoryGirl.create_list(:question, 3)

    visit '/'

    questions.each do |question|
      expect(page).to have_content(question.title)
    end
  end
end
