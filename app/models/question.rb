class Question < ApplicationRecord

    has_many(
        :comments,
        class_name:  'Comment',
        foreign_key: 'question_id',
        inverse_of:  :question,
        dependent:   :destroy
      )

    validates :content, presence: true
end
