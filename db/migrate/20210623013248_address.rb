class Address < ActiveRecord::Migration[6.1]
  def change
    add_column :directories, :address, :string
  end
end
