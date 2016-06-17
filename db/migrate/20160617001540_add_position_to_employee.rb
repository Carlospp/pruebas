class AddPositionToEmployee < ActiveRecord::Migration
  def change
    add_reference :employees, :position, index: true, foreign_key: true
  end
end
