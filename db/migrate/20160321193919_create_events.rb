class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.string :description

      t.references :creator, index: true#, foreign_key: true
      t.references :position, index: true#, foreign_key: true

      t.timestamps null: false
    end
    add_foreign_key :events, :creator
    add_foreign_key :events, :position
  end
end
