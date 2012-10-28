# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroy all existing pitches, if any."
Pitch.destroy_all

pitches = [
    
  { :did => "234324235225352", 
    :company => 'Macys', 
    :email => 'joe@gmail.com', 
    :first_name => 'joe',
    :last_name => 'ngo',  
    :headline => 'i am awesome', 
    :item1 => 'hello', 
    :item2 => 'hello2', 
    :item3 => 'hello3', 
    :jd_answer => 'i know nothing about your JD', 
    :job_title => 'District Planner Development Program', 
    :location => 'Rochester', 
    :phone => '55555', 
    :profile_link => 'www.linkedin.com/my', 
    :video_link => 'www.youtube.com/my', 
    :what_i_would_do => 'i would do anything - ANYTHING', 
    :why_you_want_me => 'cuz i am HOT!'
  }

]

puts "Populating database with #{pitches.count} Pitches"

Pitch.create pitches

