class Plan < ApplicationRecord
  belongs_to :place
  belongs_to :trip
end
