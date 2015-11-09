class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :surname
      t.string :given_name
      t.string :group
      t.references :user

      t.timestamps null: false
    end
  end
end
