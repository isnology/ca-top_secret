class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.text :context

      t.timestamps
      
      t.index [:company_id, :name], unique: true
    end
  end
end
