class AddAttachmentImageToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :companies, :image
  end
end
