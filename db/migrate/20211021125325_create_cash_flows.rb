class CreateCashFlows < ActiveRecord::Migration[6.1]
  def change
    create_table :cash_flows do |t|
      t.string :title
      t.boolean :is_income
      t.float :price
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
