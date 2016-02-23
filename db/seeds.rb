# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Festival.delete_all
Festival.create :festival_name => "Sital Sasthi", :uid => "12345678901234567890", :festival_icon => "http://www.8icon.com/public/png/iconshock-batman-Logo-128.png", :festival_banner => "https://en.wikipedia.org/wiki/Sambalpuri_culture#/media/File:Lok_Mahostav.jpg", :festival_date => DateTime.now.to_date, :latitude => 22.000000, :longitude => 88.000000, :details => "Sital sasthi is the best celebrated festival to Sambalpuri culture", :caption => "Celebrated Best in Sambalpur"
Festival.create :festival_name => "Lok Mahostav", :uid => "12345678901234512343", :festival_icon => "https://upload.wikimedia.org/wikipedia/commons/9/99/Opml-icon-128x128.png", :festival_banner => "https://en.wikipedia.org/wiki/Sambalpuri_culture#/media/File:Lok_Mahostav.jpg", :festival_date => DateTime.now.to_date, :latitude => 11.000000, :longitude => 66.000000, :details => "Lok Mahostav is the best celebrated festival to Sambalpuri culture", :caption => "Celebrated Best in Sambalpur"
Festival.create :festival_name => "Bhai Jutia", :uid => "12345678901234511111", :festival_icon => "http://www.8icon.com/public/png/iconshock-batman-Logo-128.png", :festival_banner => "https://en.wikipedia.org/wiki/Sambalpuri_culture#/media/File:Lok_Mahostav.jpg", :festival_date => DateTime.now.to_date, :latitude => 33.000000, :longitude => 77.000000, :details => "Bhai Jutia is the best celebrated festival to Sambalpuri culture", :caption => "Celebrated Best in Sambalpur"
Festival.create :festival_name => "Puo Jutia", :uid => "12345678901234583764", :festival_icon => "https://upload.wikimedia.org/wikipedia/commons/9/99/Opml-icon-128x128.png", :festival_banner => "https://en.wikipedia.org/wiki/Sambalpuri_culture#/media/File:Lok_Mahostav.jpg", :festival_date => DateTime.now.to_date, :latitude => 44.000000, :longitude => 55.000000, :details => "Puo Jutia is the best celebrated festival to Sambalpuri culture", :caption => "Celebrated Best in Sambalpur"

EmergencyServiceType.delete_all
EmergencyServiceType.create :type => "Police"
EmergencyServiceType.create :type => "Ambulance"
EmergencyServiceType.create :type => "Fire"

EmergencyService.delete_all
EmergencyService.create 
