class Guest < ActiveRecord::Base
  validates :last_name, :first_name, :date_of_birth, :birthplace, presence: true
  validate :at_least_one_contact
  validate :check_birth_date
  validates :telephone_number, length: {is: 9}, allow_blank: true

  has_many :reservations
  has_many :rooms, through: :reservations

  def at_least_one_contact
    if [telephone_number, email].reject(&:blank?).size == 0
      errors[:email] << ("Please choose at least one contact details - email address or telephone number")
      errors[:telephone_number] << ("Please choose at least one contact details - email address or telephone number")
    end
  end

  def check_birth_date
    if date_of_birth > Date.today
      errors[:date_of_birth] << ("Your birthday shouldn't be greater than today")
    end
  end
end