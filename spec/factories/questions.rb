require 'factory_girl_rails'
FactoryGirl.define do
  factory :question do
    sequence(:id) { |n| n }
    sequence(:title) { |n| "Title #{n}" }
    sequence(:description) { |n| "This is a description longer than fifty characters! Great job #{n}" }
  end
end
