# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :taggables, class_name: 'Tagging', foreign_key: :taggable_id
  has_many :books, through: :taggables, source: :taggable, source_type: 'Book'

  def to_s
    name
  end

  class << self
    def names
      pluck(:name)
    end
  end
end
