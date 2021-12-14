FactoryBot.define do
  factory :user do
    index { 1 }
    picture{ 'https://i.pravatar.cc/200?u=5f1d7f3e5c07bf96b549ca23' }
    age{ 40 }
    eye_color { 'brown' }
    name{ 'Andrea Navarro'}
    company{ 'SKYBOLD' }
    email { 'andreanavarro@skybold.com'}
    phone{ '+1 (819) 472-3053'}
  end
end