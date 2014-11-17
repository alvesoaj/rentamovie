class AddImageAndQuantityToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :image, :string
    add_column :movies, :quantity, :integer
  end
end
