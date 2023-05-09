john_doe = User.find_or_create_by(email: "john.doe@example.com") do |user|
  user.username = "john_doe"
  user.password = "password123"
  user.password_confirmation = "password123"
end

jane_smith = User.find_or_create_by(email: "jane.smith@example.com") do |user|
  user.username = "jane_smith"
  user.password = "password123"
  user.password_confirmation = "password123"
end

michael_brown = User.find_or_create_by(email: "michael.brown@example.com") do |user|
  user.username = "michael_brown"
  user.password = "password123"
  user.password_confirmation = "password123"
end

susan_wilson = User.find_or_create_by(email: "susan.wilson@example.com") do |user|
  user.username = "susan_wilson"
  user.password = "password123"
  user.password_confirmation = "password123"
end

paul_garcia = User.find_or_create_by(email: "paul.garcia@example.com") do |user|
  user.username = "paul_garcia"
  user.password = "password123"
  user.password_confirmation = "password123"
end

# Questions
question1 = Question.find_or_create_by(content: "What is a fact that you thought was true for the longest time but turned out to be false?")
question2 = Question.find_or_create_by(content: "What is the most interesting piece of trivia you know?")
question3 = Question.find_or_create_by(content: "What would be the absolute worst name you could give your child?")
question4 = Question.find_or_create_by(content: "What is the most useless talent you have?")
question5 = Question.find_or_create_by(content: "What are some 'guy secrets' girls don't know about?")
question6 = Question.find_or_create_by(content: "What's the best Wi-Fi name you've seen?")
question7 = Question.find_or_create_by(content: "What's the weirdest thing you've seen someone do in public?")
question8 = Question.find_or_create_by(content: "What are some good make out spots?")
question9 = Question.find_or_create_by(content: "What's the best way to start a conversation with a stranger?")
question10 = Question.find_or_create_by(content: "What is the most interesting documentary you've ever watched?")

# Comments
Comment.find_or_create_by(content: "I used to believe that the Great Wall of China was visible from space. Turns out, it's not.", user: john_doe, question: question1)
Comment.find_or_create_by(content: "I thought that blood was blue inside the body and only turned red when exposed to oxygen.", user: jane_smith, question: question1)
Comment.find_or_create_by(content: "The mantis shrimp can see colors that humans can't even comprehend.", user: michael_brown, question: question2)
Comment.find_or_create_by(content: "The shortest war in history lasted only 38-45 minutes between Britain and Zanzibar.", user: susan_wilson, question: question2)
Comment.find_or_create_by(content: "I'd say naming your child 'Adolf Hitler' would be pretty bad.", user: paul_garcia, question: question3)
Comment.find_or_create_by(content: "I think naming a child 'ABCDE' (pronounced Ab-city) would be pretty terrible.", user: john_doe, question: question3)
Comment.find_or_create_by(content: "I can wiggle my ears independently of each other.", user: jane_smith, question: question4)
Comment.find_or_create_by(content: "I can fold my tongue into a clover shape.", user: michael_brown, question: question4)
Comment.find_or_create_by(content: "We sometimes adjust our 'package' when no one's looking.", user: susan_wilson, question: question5)
Comment.find_or_create_by(content: "We also use our beard as a thinking tool when deep in thought.", user: paul_garcia, question: question5)
Comment.find_or_create_by(content: "I saw one called 'FBI Surveillance Van'. It always makes me laugh.", user: john_doe, question: question6)
Comment.find_or_create_by(content: "I've seen 'ItHurtsWhenIP' as a Wi-Fi name before.", user: jane_smith, question: question6)