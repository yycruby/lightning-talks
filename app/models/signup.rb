class Signup < ActiveRecord::Base
  validates :title, :name, presence: true
end
