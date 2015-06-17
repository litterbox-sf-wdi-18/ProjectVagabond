class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    # add_attachment :users, :avatar
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :users, :avatar
  end
end


# class CreateUsersWithAttachments < ActiveRecord::Migration
#   def change
#     create_table :users do |t|
#       t.attachment :avatar
#     end
#   end
# end