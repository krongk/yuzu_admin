class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :user, index: true
      t.string :title
      t.string :source_type
      t.integer :source_id
      t.string :external_url

      t.timestamps
    end
  end
end
