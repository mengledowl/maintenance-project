class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :committee_name
      t.references :student

      t.timestamps
    end
  end
end
