class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.references :user, index: true
      t.integer :cate_id
      t.references :region, index: true
      t.references :city, index: true
      t.references :district, index: true
      t.string :name
      t.text :summary
      t.string :sex
      t.string :age
      t.string :education
      t.string :work_year
      t.text :content
      t.string :mobile_phone
      t.string :mobile_phone_str
      t.string :email
      t.string :qq
      t.integer :pv
      t.integer :fav
      t.string :is_processed

      t.timestamps
    end
  end
end
