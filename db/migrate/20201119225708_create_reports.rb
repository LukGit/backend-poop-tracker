class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.decimal :poop_lat
      t.decimal :poop_lng
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
