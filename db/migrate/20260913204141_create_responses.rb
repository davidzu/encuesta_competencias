class CreateResponses < ActiveRecord::Migration[8.1]
  def change
    create_table :responses do |t|
      t.string :name
      t.string :role
      t.string :sex
      t.integer :age
      t.string :edu
      t.string :nation
      t.string :industry
      t.string :years
      t.string :size
      t.float :lmax
      t.float :ci
      t.float :cr
      t.jsonb :weights, null: false, default: {}
      t.jsonb :answers, null: false, default: []

      t.timestamps
    end
  end
end
