class DailyQuestionJob < ApplicationJob
    queue_as :default
  
    # this is the process of taking a "potential question" and making it a "question"
    def perform(*args)

    # first we select randomly a potential question
      potential_question = PotentialQuestion.order(Arel.sql('RANDOM()')).first

    # then we make a question, question out of it.
      Question.create(content: potential_question.content)
    
    end
    
  end