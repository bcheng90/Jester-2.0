class Joke < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :comments

  validates :line1, presence: true

  def self.recent
    order("created_at DESC")
  end

  # def self.most_commented
  #   all.sort_by do |question|
  #     question.comments
  # end
end
