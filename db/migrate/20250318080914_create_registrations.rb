class CreateRegistrations < ActiveRecord::Migration[8.0]
  def change
    create_table :registrations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.string :status, default: "pending"

      t.timestamps
    end
  end
end
