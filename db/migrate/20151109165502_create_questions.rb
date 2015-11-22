class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :topic
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
