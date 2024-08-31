class CreateAsArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :as_artists do |t|
      t.string :name, limit: 100, null: false

      t.timestamps
    end
  end
end
