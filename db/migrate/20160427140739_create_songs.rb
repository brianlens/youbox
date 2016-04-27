class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :artist, index: true
      t.string :title
      t.string :album
      t.integer :year
      t.string :cover
      t.string :ylink
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
