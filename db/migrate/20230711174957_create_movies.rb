class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.float :rating, default: 0
      t.text :poster_url

      t.timestamps
    end
  end
end
