class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
            }

  validate :must_carry_mens_or_womens

  before_destroy :check_store_employees_size

  private

  def must_carry_mens_or_womens
    if !mens_apparel && !womens_apparel
      errors.add(
        :mens_apparel,
        "cannot be false/nil if store also doesn't carry women's apparel",
      )
      errors.add(
        :womens_apparel,
        "cannot be false/nil if store also doesn't carry men's apparel",
      )
    end
  end

  def check_store_employees_size
    employees_of_store = Employee.where(store_id: self.id).count
    if employees_of_store >= 1
      errors[:base] << 'cannot delete a store that has 1 or more employees'
      return false
    end
  end
end
