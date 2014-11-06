class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :person_id
      t.integer :movie_id
      t.float :value

      t.timestamps
    end
  end
end
