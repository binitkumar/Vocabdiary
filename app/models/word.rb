class Word < ActiveRecord::Base
  attr_accessible :meanning, :word
  has_many :answers

  def self.random
    find( ( rand(1000000000) % Word.all.length ) + 1 )
  end

end
