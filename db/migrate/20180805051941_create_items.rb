class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :by
      t.integer :descendants
      t.integer :score
      t.integer :time
      t.integer :itemId
      t.string :title
      t.string :type
      t.string :url

      t.timestamps
    end
  end
end
