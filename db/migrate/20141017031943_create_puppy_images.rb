class CreatePuppyImages < ActiveRecord::Migration
  def change
    create_table :puppy_images do |t|
      t.integer :puppy_id
      t.text :desc

      t.timestamps
    end
  end
end
