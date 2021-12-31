# frozen_string_literal: true

module BookFilters
  extend ActiveSupport::Concern
  included do
    scope :title_cont, ->(title) { where("title LIKE '%#{title}%'") }
    scope :tags_name_in, ->(names) { distinct.joins(:tags).where({ tags: { name: names } }) }
    scope :price_lteq, ->(min) { where('price <= ?', min) }
    scope :price_gteq, ->(max) { where('price >= ?', max) }

    class << self
      def build_filters(params)
        return self unless params

        klass = self
        klass = klass.title_cont(params[:title_cont]) if  params[:title_cont].present?
        klass = klass.tags_name_in(params[:tags_name_in]) if params[:tags_name_in].present?
        klass = klass.price_gteq(params[:price_gteq]) if  params[:price_gteq].present?
        klass = klass.price_lteq(params[:price_lteq]) if  params[:price_lteq].present?
        klass
      end
    end
  end
end
