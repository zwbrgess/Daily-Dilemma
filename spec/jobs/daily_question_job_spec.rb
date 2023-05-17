require 'rails_helper'

RSpec.describe DailyQuestionJob, type: :job do
  before do
    # Create some PotentialQuestion records for testing
    PotentialQuestion.create(content: 'Test question 1?')
    PotentialQuestion.create(content: 'Test question 2?')
  end

  it 'creates a new question from a random potential question' do
    expect {
      DailyQuestionJob.perform_now
    }.to change(Question, :count).by(1)

    expect(Question.last.content).to be_in(['Test question 1?', 'Test question 2?'])
  end
end