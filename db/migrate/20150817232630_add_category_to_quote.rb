class AddCategoryToQuote < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
      t.belongs_to :category
    end
  end
end
