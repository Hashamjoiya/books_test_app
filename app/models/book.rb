# frozen_string_literal: true

class Book < ApplicationRecord
  include Taggable
  include Uuid
  include BookFilters

  validates :title, presence: true
  validates :uuid, presence: true, on: :save

  def to_s
    title
  end
end
