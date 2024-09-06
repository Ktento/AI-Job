class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name, limit: 20, unique: true
      t.string :pass, limit: 30

      t.timestamps
    end
  end
end
