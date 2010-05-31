class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :position
      t.float :experience
      t.string :coordinator
      t.string :city
      t.string :office
      t.string :contact_number
      t.string :status
      t.string :inprogress_status
      t.string :decline_reason
      t.string :skills
      t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
