class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.float :price, scale: 2, default: 0 
      t.integer :minutes

      t.timestamps
    end
  end
end
