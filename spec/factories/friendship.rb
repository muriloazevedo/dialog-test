FactoryBot.define do
  factory :friendship do
    user
    friend { user_friend }
  end
end