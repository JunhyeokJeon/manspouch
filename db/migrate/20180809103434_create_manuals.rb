class CreateManuals < ActiveRecord::Migration[5.0]
  def change
    create_table :manuals do |t|
      t.string :title
      t.text :content

      # base info
      t.string :age
      t.string :job

      # user type
      t.boolean :notcare
      t.boolean :basecare
      t.boolean :hardcare
      t.boolean :beautyman
      t.boolean :idol

      # skin types
      t.boolean :dryb
      t.boolean :normalb
      t.boolean :oilyb
      t.boolean :complexb
      t.boolean :sensitiveb

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
      t.boolean :headcell
      t.boolean :hairlose
      t.boolean :bodypimple
      t.boolean :bodycell
      t.boolean :bodydry

      t.timestamps
    end
  end
end
