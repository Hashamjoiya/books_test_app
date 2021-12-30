# frozen_string_literal: true

module Taggable
  extend ActiveSupport::Concern
  included do
    has_many :taggings, as: :taggable
    has_many :tags, through: :taggings, counter_cache: true

    accepts_nested_attributes_for :taggings
    accepts_nested_attributes_for :tags

    def tag_names
      tags.pluck(:name)
    end
  end
end
