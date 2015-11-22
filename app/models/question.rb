#
class Question < ActiveRecord::Base
  has_many :fists
  belongs_to :profiles
end
