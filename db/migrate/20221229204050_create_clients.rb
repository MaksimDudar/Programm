class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :namereg
      t.integer :year
      t.string :form
      t.string :unp
      t.string :address
      t.string :city
      t.string :country
      t.string :addresspost
      t.string :citypost
      t.string :countrypost
      t.integer :phone
      t.string :emailaddress
      t.string :site
      t.text :banksdet
      t.text :additional

      t.timestamps
    end
  end
end
