class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.references :author
      t.text :description
      t.timestamp :published_at

      t.timestamps
    end
  end
end
