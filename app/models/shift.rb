class Shift < ApplicationRecord
  validates :title, :start_date, :end_date, presence: true
  # now it doesn't go to a scary error page, validates before heading to DB
end
