class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.date :birth
      t.text :address
      t.string :crype
      t.binary :photo

      t.timestamps
    end
  end
end
