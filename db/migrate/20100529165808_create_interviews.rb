class CreateInterviews < ActiveRecord::Migration
  def self.up
    create_table :interviews do |t|
      t.integer :candidate_id
      t.datetime :starts_at
      t.integer :duration
      t.string :interview_type
      t.string :interviewer_one
      t.string :interviewer_two
      t.string :interviewer_three
      t.string :where
      t.string :result
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :interviews
  end
end
