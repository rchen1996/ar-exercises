require 'securerandom'

class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 40,
              less_than_or_equal_to: 200,
            }
  validates :store_id, presence: true

  after_create :set_employee_password

  private

  def set_employee_password
    self.password = SecureRandom.hex.slice!(2..9)
    self.save
  end
end
