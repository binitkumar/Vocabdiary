class Answer < ActiveRecord::Base
  attr_accessible :answer_id, :test_paper_id, :word_id
  belongs_to :word
end
