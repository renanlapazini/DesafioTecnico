class CreateCallCosts < ActiveRecord::Migration[6.1]
  def change
    create_table :call_costs do |t|
      t.string :origin
      t.string :receiver
      t.float :price, scale: 2, default: 0 

      t.timestamps
    end
  end
end
