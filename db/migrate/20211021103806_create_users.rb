class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nikname, null: false
      t.index :nikname, unique: true

      t.timestamps
    end
  end
end
