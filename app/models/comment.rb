class Comment < ApplicationRecord
    
    belongs_to(
        :question,
        class_name:  'Question',
        foreign_key: 'question_id',
        inverse_of:  :comments
      )

    belongs_to(
        :user,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :comments
    )

    validates :content, presence: true

end
