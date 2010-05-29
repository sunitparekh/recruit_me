class CreateCandidates < ActiveRecord::Migration
  def self.up
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :position
      t.integer :experience
      t.string :coordinator
      t.string :city
      t.string :office
      t.string :contact_number
      t.string :status
      t.string :skills

      t.timestamps
    end
  end

  def self.down
    drop_table :candidates
  end
end
