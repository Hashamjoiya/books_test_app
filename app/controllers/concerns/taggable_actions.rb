# frozen_string_literal: true

module TaggableActions
  extend ActiveSupport::Concern

  included do
    before_action :set_resources, only: %i[tagging update_tags]

    def tagging; end

    def update_tags
      @tags = params[:tag_list]&.split(',')
      @books_ids = params[:taggables]
      create_new_tags
      set_book_tags
      render :tagging
    end

    def set_resources
      @tags = Tag.all
      @objects = model_class.all
    end

    private

    def create_new_tags
      (@tags - Tag.names).each do |tag|
        Tag.create!(name: tag)
      end
    end

    def set_book_tags
      @tags.each do |tag|
        @tag = Tag.find_by_name(tag)
        @books_ids.each do |book_id|
          book = Book.find_by_id(book_id)
          next if book && book.taggings.where(tag_id: @tag.id).exists?

          book.taggings.create!(tag_id: @tag.id)
        end
      end
    end

    def model_class
      controller_name.classify.constantize
    end
  end
end
