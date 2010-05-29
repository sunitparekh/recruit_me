class Candidate < ActiveRecord::Base
  has_many :interviews

  validates_presence_of :name, :email, :role, :position, :contact_number
  validates_uniqueness_of :email
  validates_numericality_of :experience, :only_integer => true

end
