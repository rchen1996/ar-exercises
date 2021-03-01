class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
            }

  def must_carry_mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(
        :mens_apparel,
        :womens_apparel,
        message: "at least one of men's or womens apparel must be true",
      )
    end
  end

  validate must_carry_mens_or_womens
end
