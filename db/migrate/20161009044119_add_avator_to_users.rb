class AddAvatorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avator, :string
  end
end
