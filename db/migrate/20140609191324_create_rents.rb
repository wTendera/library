class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.references :user
      t.references :book
    end
  end
end
