class AddAttachmentCvMembershipToApplicants < ActiveRecord::Migration
  def self.up
    change_table :applicants do |t|
      t.attachment :cv
      t.attachment :membership
    end
  end

  def self.down
    remove_attachment :applicants, :cv
    remove_attachment :applicants, :membership
  end
end
