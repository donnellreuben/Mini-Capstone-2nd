class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, "numeric USING CAST(price AS numeric)"
    change_column :products, :price, :decimal, precision: 9, scale: 2
    # 0.95
    # XXXXXXX 0.952
    # 9_999_999.99

  end
end
