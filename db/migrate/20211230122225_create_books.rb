# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :uuid, null: false
      t.string :title, null: false
      t.text :description
      t.integer :price, default: 0

      t.timestamps
    end
  end
end
