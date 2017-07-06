class Budget < ApplicationRecord
  has_many :detail_budgets
  accepts_nested_attributes_for :detail_budgets, :allow_destroy => true
end
