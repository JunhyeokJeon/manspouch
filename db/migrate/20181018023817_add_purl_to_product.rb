class AddPurlToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :purl, :string
  end
end
