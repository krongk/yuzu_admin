class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true
      t.integer :cate_id
      t.references :region, index: true
      t.references :city, index: true
      t.references :district, index: true
      t.string :title
      t.string :salary
      t.text :content
      t.string :detail_address
      t.integer :pv
      t.string :is_processed

      t.timestamps
    end
  end
end
