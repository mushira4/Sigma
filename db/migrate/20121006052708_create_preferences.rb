class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :authorize_receive_email
      t.boolean :authorize_receive_warning

      t.timestamps
    end
  end
end
