# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["bcheng90", "danasselin", "ebutler90", "gellieb", "hoathenguyen85", "kevalwell", "laurennicoleroth", "maxrater", "mbouzi", "notika314", "notryanb", "phanendar", "rimmesbe", "sabron13", "samguergen", "steppinlo", "suprfrye", "tracyteague", "queerviolet", "linkblaine"].each do |user|
  User.create(name: user, password: "123", created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
end

users = User.all

users.each do |user|
  5.times do
    Joke.create(line1: Faker::Hacker.say_something_smart, user_id: user.id, created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
  10.times do
    Comment.create(message: Faker::Hacker.say_something_smart, user_id: user.id, joke_id: rand(1..100), created_at: "#{rand(2010..2014)}-#{rand(1..12)}-#{rand(1..28)} 03:14:15")
  end
end

Joke.create(line1: "Knock knock", line2: "Two guys walked into a bar.", user_id: 1)
Joke.create(line1: "My grandpa has the heart of a lion, and a lifetime ban from the zoo.", user_id: 2)
Joke.create(line1: "Could you please call me a taxi?", line2: "You're a taxi.", user_id: 3)
Joke.create(line1: "How does a train eat?", line2: "It goes chew chew", user_id: 4)

# This one had 2 "line2"s inside. Had to fix this one, I really like it.
Joke.create(line1: "What's Forest Gumps password?", line2: "HoaneForestHoane", user_id: 5)
Joke.create(line1: "I think I want a job cleaning mirrors. It's just something I could really see myself doing.", user_id: 6)
Joke.create(line1: "Im really good friends with 25 letters of the alphabet... I don't know y", user_id: 7)
Joke.create(line1: "Two fish are in a tank. One is driving and the other one is operating the gun.", user_id: 8)
Joke.create(line1: "What did Hoa say when everyone was trying to talk to him with his headphones in?", line2: "Hoa-t?", user_id: 9)
Joke.create(line1: "Why does Snoop Dogg always carry an umbrella?", line2: "Fo' Drizzle..... or in case of a Lil' Wayne.", user_id: 10)
Joke.create(line1: "If you ever get cold, just stand in a corner for a bit.", line2: "They're usually around 90 degrees.", user_id: 11)
Joke.create(line1: "There were two muffins in an oven. One says 'man it's hot in here' The other gasps! 'Oh my god! A talking muffin!'", user_id: 12)
Joke.create(line1: "A magician was driving down the road when he turned into a driveway.", user_id: 13)
Joke.create(line1: "Why aren't there any knock knock jokes about freedom?", line2: "Because freedom rings", user_id: 14)
Joke.create(line1: "I went to a zoo the other day. It was completely empty, except for a single dog. It was a Shih Tzu.", user_id: 15)
Joke.create(line1: "What do you call a ghost at a hotel?", line2: "A inn spectre.", user_id: 16)
Joke.create(line1: "What happened to the cow that jumped over the barbed wire fence?", line2: "Udder destruction", user_id: 17)
Joke.create(line1: "How many 'Hoa's does it take to switch a lightbulb?", line2: "Hoane.", user_id: 18)
###Ashi, I repeated dan's joke on accident for yours! Mannnnnn. I'll try to think of another.
Joke.create(line1: "Why do bees stay in their hives in the winter?", line2: "Swarm.", user_id: 19)
##### Sorry, I was just copy+pastasing most of the jokes, I didn't realize that this one below was a super dirty one
Joke.create(line1: "What's ET short for?", line2: "Because he's got little legs.", user_id: 20)