class AddAuthorToQuote < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
      t.belongs_to :author
    end
  end
end
