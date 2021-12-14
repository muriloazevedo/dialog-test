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

  factory :user_friend, parent: :user do
    index { 1 }
    picture{ 'https://i.pravatar.cc/200?u=5f1d7f3e43730aabeb27dcf3' }
    age{ 27 }
    eye_color { 'brown' }
    name{ 'Madge Boyer'}
    company{ 'BLUPLANET' }
    email { 'madgeboyer@bluplanet.com'}
    phone{ '+1 (833) 452-2131'}
  end
end