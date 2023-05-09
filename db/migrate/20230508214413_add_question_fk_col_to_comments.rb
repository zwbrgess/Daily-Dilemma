class AddQuestionFkColToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :question, foreign_key: true
  end
end
