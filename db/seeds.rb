questions = [
    "What is a fact that you thought was true for the longest time but turned out to be false?",
    "What is the most interesting piece of trivia you know?",
    "What would be the absolute worst name you could give your child?",
    "What is the most useless talent you have?",
    "What are some 'guy secrets' girls don't know about?",
    "What's the best Wi-Fi name you've seen?",
    "What's the weirdest thing you've seen someone do in public?",
    "What are some good make out spots?",
    "What's the best way to start a conversation with a stranger?",
    "What is the most interesting documentary you've ever watched?",
  ]
  
questions.each do |content|
    Question.create!(content: content)
end