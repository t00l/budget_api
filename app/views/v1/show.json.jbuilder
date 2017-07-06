json.(@budget, :id, :sent_at, :total_amount)
json.specific_amount @budget.detail_budgets
