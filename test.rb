require "bundler"
Bundler.require

require_relative 'config/credentials'
require_relative 'lib/nike_plus'

session = NikePlus::SessionFactory.create(NIKEPLUS_EMAIL, NIKEPLUS_PASSWORD)

my_profile = session.get_profile("BBDORun")

puts "My friends running statistics:"

my_profile.friends.each do |friend|
  profile = session.get_profile(friend)
  puts "  #{profile.name} ran #{profile.distance} km"
end

