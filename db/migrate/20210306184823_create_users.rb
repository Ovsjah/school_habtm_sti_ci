class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false
      t.string :type, null: false
      t.timestamps
      t.index %i(type last_name first_name age)
    end
  end
end
