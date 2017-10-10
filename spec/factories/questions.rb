require 'factory_girl_rails'
FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "Title #{n}" }
  end
end
