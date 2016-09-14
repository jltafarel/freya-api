FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password Faker::Internet.password(8)
  end

  factory :another_user, class: User do
    name Faker::Name.name
    email Faker::Internet.email
    password 'qwerty'
  end

  factory :admin, class: User do
    name Faker::Name.name
    email Faker::Internet.email
    password Faker::Internet.password(8)
    role 'admin'
  end
end
