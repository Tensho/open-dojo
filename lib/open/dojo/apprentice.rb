class Open::Dojo::Apprentice < ActiveRecord::Base
  belongs_to :master

  validates :rank, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
end
