class AddPoopzipToReports < ActiveRecord::Migration[6.0]
  def change
    add_column :reports, :poopzip, :integer
  end
end
