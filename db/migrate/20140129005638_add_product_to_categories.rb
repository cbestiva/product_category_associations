class AddProductToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :product, :string
  end
end
