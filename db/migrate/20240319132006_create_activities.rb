class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :difficulty
      t.text :description

      t.timestamps
    end
  end
end
