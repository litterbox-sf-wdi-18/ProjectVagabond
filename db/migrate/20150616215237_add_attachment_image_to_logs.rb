class AddAttachmentImageToLogs < ActiveRecord::Migration
  def self.up
    # add_attachment :logs, :image
    change_table :logs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :logs, :image
  end
end


# class CreateLogsWithImages < ActiveRecord::Migration
#   def change
#     create_table :users do |t|
#       t.attachment :image
#     end
#   end
# end