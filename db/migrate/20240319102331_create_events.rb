class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.date :date
      t.boolean :creator
      t.references :user, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.timestamps
    end
  end
end
