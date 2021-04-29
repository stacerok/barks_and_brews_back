class AddImageToBreweries < ActiveRecord::Migration[6.1]
  def change
    add_column :breweries, :image, :string
  end
end
