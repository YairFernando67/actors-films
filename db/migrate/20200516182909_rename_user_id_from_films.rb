class RenameUserIdFromFilms < ActiveRecord::Migration[6.0]
  def change
    rename_column :films, :user_id, :creator_id
  end
end
