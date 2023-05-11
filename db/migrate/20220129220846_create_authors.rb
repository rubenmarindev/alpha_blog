class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :alias_name
      t.integer :age
      t.float :weight
      t.decimal :height

      t.timestamps
    end
  end
end
