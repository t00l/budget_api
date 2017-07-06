class CreateDetailBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :detail_budgets do |t|
      t.references :budget, foreign_key: true
      t.integer :specific_amount
      t.timestamps
    end
  end
end
