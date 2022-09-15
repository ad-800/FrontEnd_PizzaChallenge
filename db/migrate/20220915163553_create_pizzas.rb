class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :style
      t.string :dough
      t.string :topping

      t.timestamps
    end
  end
end
