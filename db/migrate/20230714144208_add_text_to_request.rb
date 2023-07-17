class AddTextToRequest < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :text, :text
  end
end
