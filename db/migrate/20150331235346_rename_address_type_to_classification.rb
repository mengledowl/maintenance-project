class RenameAddressTypeToClassification < ActiveRecord::Migration
  def change
    rename_column :addresses, :type, :kind
  end
end
