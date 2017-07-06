# json.(@budget, :id, :sent_at, :total_amount)
# json.specific_amount @budget.detail_budgets
json.extract! @budget, :id, :total_amount, :created_at, :updated_at
