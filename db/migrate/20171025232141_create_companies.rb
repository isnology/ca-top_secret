class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :domain

      t.timestamps
      
      t.index :domain, unique: true
    end
  end
end
