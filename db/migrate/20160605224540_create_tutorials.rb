class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :author

      t.timestamps null: false
    end
  end
end
