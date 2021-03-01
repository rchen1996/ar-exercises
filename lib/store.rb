class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
            }

  validate :must_carry_mens_or_womens

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
end
