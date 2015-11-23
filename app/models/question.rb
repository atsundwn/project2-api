#
class Question < ActiveRecord::Base
  has_many :fists, dependent: :destroy
  belongs_to :profiles
end
