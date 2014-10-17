class Avatar < ActiveRecord::Migration
  def self.up
    change_table :puppy_images do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :puppy_images, :avatar
  end
end
