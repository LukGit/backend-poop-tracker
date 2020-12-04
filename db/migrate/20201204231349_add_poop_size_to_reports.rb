class AddPoopSizeToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :poop_size, :string
  end
end
