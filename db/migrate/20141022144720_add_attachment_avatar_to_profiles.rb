class AddAttachmentAvatarToProfiles < ActiveRecord::Migration
  def change
    add_column :profile, :nationality, :string
    add_index :profile, :nationality
  end
end
