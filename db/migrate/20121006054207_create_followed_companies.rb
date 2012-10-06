class CreateFollowedCompanies < ActiveRecord::Migration
  def change
    create_table :followed_companies do |t|
      t.references :user
      t.references :company
      t.references :preference

      t.timestamps
    end
    add_index :followed_companies, :user_id
    add_index :followed_companies, :company_id
    add_index :followed_companies, :preference_id
  end
end
