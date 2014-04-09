class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end
