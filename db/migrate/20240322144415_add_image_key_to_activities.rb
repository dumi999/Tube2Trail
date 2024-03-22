class AddImageKeyToActivities < ActiveRecord::Migration[7.1]
  def change
    add_column :activities, :image_key, :string
  end
end
