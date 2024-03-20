class RenameAvatarToPhotoInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :avatar, :photo
  end
end
