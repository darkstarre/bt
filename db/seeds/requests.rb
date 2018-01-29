# db/seeds/requests.rb

require 'faker'

requests = 100
Request.transaction do
  requests.times do |r|
    Request.create! do |request|
      request.requester = Faker::name.name
      request.courseID =
