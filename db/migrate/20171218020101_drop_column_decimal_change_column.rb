class DropColumnDecimalChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	 remove_column :orders, :decimal
  	 change_column :orders, :total_price, 'decimal USING CAST(total_price AS decimal)'
  end
end
