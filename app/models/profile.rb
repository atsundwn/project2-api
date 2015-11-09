#
class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true
  has_many :fists
  has_many :questions, through: :fists
end
