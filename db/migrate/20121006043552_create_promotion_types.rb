class CreatePromotionTypes < ActiveRecord::Migration
  def change
    create_table :promotion_types do |t|

      t.timestamps
    end
  end
end
