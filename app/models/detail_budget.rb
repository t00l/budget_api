class DetailBudget < ApplicationRecord
  belongs_to :budget, optional: true
end
