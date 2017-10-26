# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spacex = Company.create! name: 'Space X', domain: 'spacex.com'
tesla = Company.create! name: 'Tesla', domain: 'tesla.com'
apple = Company.create! name: 'Apple', domain: 'apple.com'
google = Company.create! name: 'Google', domain: 'goole.com'
amazon = Company.create! name: 'Amazon', domain: 'amazon.com'

# create users
[spacex, tesla, apple, google, amazon].each do |company|
  %w(sue john mary arthur).each do |username|
    email = "#{username}@#{company.domain}"
    User.create! email: email, password: '123456'
  end

  #create documents
  name = '2018 plan'
  content = "#{company.name}'s plan for the year 2018..."
  Document.create! company:company, name: name, content: content

  name = 'The next big thing'
  technologies = ['VR', 'AI', 'Wearables', 'Streaming video', 'Voice assistants']
  mediums = ['in space', 'in hovercrafts', 'on a remote island', 'for cats', 'delivered by drone']
  big_thing = "#{technologies.sample} #{mediums.sample}"
  content = "The next big thing is something only #{company.name} can do: #{big_thing}."
  Document.create!(company: company, name: name, content: content)
end

