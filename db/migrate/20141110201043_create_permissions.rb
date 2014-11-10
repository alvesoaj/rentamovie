class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :person_id
      t.integer :role_id

      t.timestamps
    end
  end
end
