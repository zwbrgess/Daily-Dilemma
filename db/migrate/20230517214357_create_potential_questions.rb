class CreatePotentialQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :potential_questions do |t|
      t.text :content
      t.timestamps
    end
  end
end
