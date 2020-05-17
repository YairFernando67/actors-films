class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :image
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
