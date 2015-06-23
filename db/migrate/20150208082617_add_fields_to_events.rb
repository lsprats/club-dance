class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date_init, :datetime
    add_column :events, :date_end, :datetime
    add_attachment :events, :image
  end
end
