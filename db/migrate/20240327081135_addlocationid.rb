class Addlocationid < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :location_id, :integer
  end
end
