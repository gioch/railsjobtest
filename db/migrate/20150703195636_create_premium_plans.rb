class CreatePremiumPlans < ActiveRecord::Migration
  def change
    create_table :premium_plans do |t|
      t.string :title
      t.float :price_per_month
      t.boolean :active

      t.timestamps null: false
    end
  end
end
