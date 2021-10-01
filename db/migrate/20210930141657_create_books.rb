class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :book_title, null: false
      t.string     :book_number, null: false
      t.string     :book_author, null: false
      t.string     :book_genre, null: false
      t.string     :book_publisher, null: false
      t.string     :book_type, null: false
      #t.integer    :book_medium_id, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
