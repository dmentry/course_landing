class ChangeColumnName < ActiveRecord::Migration
  def change
    add_column :orders, :course_type, :string
  end
end
