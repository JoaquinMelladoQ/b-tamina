class Deal < ApplicationRecord
  belongs_to :brewery
  belongs_to :client
end
