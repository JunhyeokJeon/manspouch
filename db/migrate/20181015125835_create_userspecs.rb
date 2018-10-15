class CreateUserspecs < ActiveRecord::Migration[5.0]
  def change
    create_table :userspecs do |t|
      # user type
      t.string :usertype

      # skin types
      t.string :skintype

      # skintype score
      t.integer :dry
      t.integer :normal
      t.integer :oily
      t.integer :complex
      t.integer :sensitive

      # skin properties
      t.boolean :wrinkle
      t.boolean :sebum
      t.boolean :stain
      t.boolean :bigpore
      t.boolean :down
      t.boolean :atopy
      t.boolean :pimple
      t.boolean :skindry
      t.boolean :eruption
      t.boolean :deadcell
      t.boolean :freckle
      t.boolean :dark
      t.boolean :hairpimple
      t.boolean :haircell
      t.boolean :hairlose
      t.boolean :bodypimple
      t.boolean :bodycell
      t.boolean :bodydry

      t.timestamps
    end
  end
end
