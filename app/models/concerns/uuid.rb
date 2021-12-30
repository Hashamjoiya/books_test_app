# frozen_string_literal: true

module Uuid
  extend ActiveSupport::Concern
  included do
    before_create :set_uuid

    def set_uuid
      self.uuid = SecureRandom.uuid
    end
  end
end
