class Poll < ActiveRecord::Base
  has_many :questions
  has_many :responses, :through => :questions
end

class Question < ActiveRecord::Base
  belongs_to :poll
  has_many :answers
  has_many :responses, :through => :answers
end

class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :responses
end

class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
end