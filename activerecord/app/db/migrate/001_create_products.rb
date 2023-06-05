class CreateProducts < ActiveRecord::Migration[6.1]
    def change
      create_table :products do |t|
        t.text  :product_name
        t.text :product_category
        t.numeric :price
      end
    end
  end