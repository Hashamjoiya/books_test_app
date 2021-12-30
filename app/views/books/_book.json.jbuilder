# frozen_string_literal: true

json.extract! book, :id, :uuid, :title, :description, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
