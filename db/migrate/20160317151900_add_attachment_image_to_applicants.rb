class AddAttachmentImageToApplicants < ActiveRecord::Migration
  def self.up
    change_table :applicants do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :applicants, :image
  end
end
