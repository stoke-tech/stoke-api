class CreateRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
