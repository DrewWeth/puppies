class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.text :desc
      t.string :img_url

      t.timestamps
    end
  end
end
