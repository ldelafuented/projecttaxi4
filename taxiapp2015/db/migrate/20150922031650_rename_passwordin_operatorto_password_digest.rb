class RenamePasswordinOperatortoPasswordDigest < ActiveRecord::Migration
  def change
    rename_column :operators , :password, :password_digest
  end
end
