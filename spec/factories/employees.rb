 # spec/factories/emploees.rb

 FactoryBot.define do
   factory :employee do
    firstName {Faker::Lorem.word}
    lastName {Faker::Lorem.word}
    nickName {Faker::Lorem.word}
    clientName {Faker::Lorem.word}
   end
 end
