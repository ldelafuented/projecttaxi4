class Reservation < ActiveRecord::Base
    belongs_to:customers
    belongs_to:driver
end
