# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Announcement.create( publish_on:Date.today + 1.day, expire_on:Date.today + 2.day,
                    critical_flag:false, body:"Donuts in the coffee room", title:"Donuts", publisher: "brian page" )

Announcement.create( publish_on:Date.today - 3.day, expire_on:Date.today,
                     critical_flag:true, body:"Hello", title:"Test", publisher: "brian page" )

Announcement.create( publish_on:Date.today, expire_on:Date.today + 4.day,
                     critical_flag:false, body:"Golf Today", title:"Golf", publisher: "brian page" )


Event.create( event_date:Date.today, event_time:Time.now,
                 body:"Golf Today", title:"Golf", publisher: "brian page" )

Event.create( event_date:Date.today + 2.day, event_time:Time.now,
              body:"Bike Race", title:"Race", publisher: "brian page" )

Event.create( event_date:Date.today, event_time:Time.now,
              body:"Important Meeting", title:"Meetings", publisher: "brian page" )
