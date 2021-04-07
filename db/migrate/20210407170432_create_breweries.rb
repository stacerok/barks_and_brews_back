class CreateBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.text :description

      t.timestamps
    end
  end
end
