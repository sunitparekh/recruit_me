class Candidate < ActiveRecord::Base
  has_many :interviews, :autosave => true, :dependent => :destroy

  validates_presence_of :name, :email, :role, :position, :contact_number, :status, :source
  validates_uniqueness_of :email
  validates_numericality_of :experience

end
