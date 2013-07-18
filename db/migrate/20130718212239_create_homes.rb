class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
