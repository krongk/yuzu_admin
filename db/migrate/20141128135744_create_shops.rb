class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.references :user, index: true
      t.references :region, index: true
      t.references :city, index: true
      t.referenes :district
      t.string :title
      t.string :detail_address
      t.text :content
      t.string :contact_name
      t.string :mobile_phone
      t.string :mobile_phone_url
      t.string :email
      t.string :email_url
      t.string :website
      t.integer :pv
      t.string :source
      t.string :source_url
      t.string :is_processed

      t.timestamps
    end
  end
end
