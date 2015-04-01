class ChangeCitizenshipToBoolean < ActiveRecord::Migration
  def change
    remove_column :students, :citizenship
    add_column :students, :citizenship, :boolean
  end
end
