class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :description
      t.references :author, foreign_key: { to_table: :users }
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
