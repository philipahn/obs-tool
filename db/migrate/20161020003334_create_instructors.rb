class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :unique_id
      # t.index :unique_id
      t.references :metro, index: true, foreign_key: true
    end
  end
end
