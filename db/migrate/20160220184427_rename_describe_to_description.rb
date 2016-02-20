class RenameDescribeToDescription < ActiveRecord::Migration
  def change
		rename_column :phrases, :describe, :description
  end
end
