class Room < ActiveRecord::Base
  validates :name, :beds, presence: true

  has_many :reservations
  has_many :guests, through: :reservations

  def to_s
    if additional_bed
      "#{name} (#{beds} + 1 beds)"
    else
      "#{name} (#{beds})"
    end
  end
end