class AddAttachmentAssetToTopicFiles < ActiveRecord::Migration
  def self.up
    change_table :topic_files do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :topic_files, :asset
  end
end
