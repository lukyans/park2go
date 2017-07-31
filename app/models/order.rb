class Order < ApplicationRecord
  belongs_to :parker
  belongs_to :driver
end
