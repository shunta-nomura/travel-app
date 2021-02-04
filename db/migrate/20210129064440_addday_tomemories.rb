class AdddayTomemories < ActiveRecord::Migration[6.0]
  def change
    add_column :memories, :day, :date
  end
end
