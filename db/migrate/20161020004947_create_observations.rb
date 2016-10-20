class CreateObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :observations do |t|
      t.string :instance
      t.date :obs_date
      t.string :created_by
      t.text :obs_notes
      t.integer :prep
      t.integer :framing
      t.integer :inst
      t.integer :cfu
      t.integer :active
      t.date :obs_edit
      t.references :instructor, index: true, foreign_key: true
    end
  end
end
