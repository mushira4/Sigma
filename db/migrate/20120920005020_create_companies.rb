class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :cnpj
      t.string :phone
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
