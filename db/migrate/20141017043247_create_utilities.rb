class CreateUtilities < ActiveRecord::Migration
  def change
    create_table :utilities do |t|
      t.text :controller
      t.string :t
      t.string :a
      t.text :action
      t.text :html_safe

      t.timestamps
    end
  end
end
