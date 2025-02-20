# frozen_string_literal: true

class CreateSomeTable < ActiveRecord::Migration[5.0]
  def up
    create_table :some do |t|
      t.enum :enum8, value: { key1: 1, key2: 2 }, limit: 1, null: false
      t.enum :enum16, value: { key1: 1, key2: 2 }, limit: 2, null: false
      t.enum :enum_nullable, value: { key1: 1, key2: 2 }, null: true
    end
  end
end

