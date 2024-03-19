class AddEventToActivity < ActiveRecord::Migration[7.1]
  def change
    add_reference :activities, :event, null: false, foreign_key: true
  end
end
