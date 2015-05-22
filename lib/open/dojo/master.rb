class Open::Dojo::Master < ActiveRecord::Base
  has_many :apprentices

  validates :apprentices, length: { maximum: 3, too_long: "Master can't have more than 3 apprentices" }
  validates :rank, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 9 }

  after_initialize do
    self.rank = 1
  end

  after_save do
    errors.add(:rank, "can't be more then 9") if rank > 9

    if age - age_was.to_i >= 5
      self.rank += 1
    end
  end
end
