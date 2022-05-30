class CreateDetailsItems < ActiveRecord::Migration[7.0]
  def change
    create_table :details_items do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
