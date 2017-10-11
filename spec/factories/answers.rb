require 'factory_girl_rails'
FactoryGirl.define do
  factory :answer do
    sequence(:question_id) { |n| n }
    sequence(:description) { |n| "This is a description longer than fifty characters! Great job #{n}" }
  end
end
