class AddReferencesEvent < ActiveRecord::Migration
  def change
    add_reference :events, :album, index: true
  end
end
