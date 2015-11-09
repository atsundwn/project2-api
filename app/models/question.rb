#
class Question < ActiveRecord::Base
  has_many :fists
  has_many :profiles, through: :fists
end
