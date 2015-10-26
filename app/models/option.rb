class Option < ActiveRecord::Base
  belongs_to :question
  has_many :votes, dependent: :destroy
end
