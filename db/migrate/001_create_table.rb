class CreateTable < ActiveRecord::Migration
  create_table :posts do |t|
    t.string :name
    t.string :content
  end
end
