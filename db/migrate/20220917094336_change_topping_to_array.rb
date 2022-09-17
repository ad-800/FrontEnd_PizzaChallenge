class ChangeToppingToArray < ActiveRecord::Migration[7.0]
  def change
    change_column :pizzas, :topping, :string, array: true, using: "topping::character varying[]"
  end
end
