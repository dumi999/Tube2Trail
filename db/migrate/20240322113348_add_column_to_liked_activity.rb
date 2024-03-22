class AddColumnToLikedActivity < ActiveRecord::Migration[7.1]
  def change
    add_column :liked_activities, :liked, :boolean
  end
end
