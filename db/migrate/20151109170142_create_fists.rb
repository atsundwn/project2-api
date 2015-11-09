class CreateFists < ActiveRecord::Migration
  def change
    create_table :fists do |t|
      t.integer :value
      t.references :profile, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
