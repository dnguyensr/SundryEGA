class CreatePhotographers < ActiveRecord::Migration[5.0]
  def change
    create_table :photographers do |t|
      t.string :handle
      t.text :profile
      t.string :avatar
      t.string :flickr
      t.string :youtube
      t.string :facebook
      t.string :twitter
      t.string :tistory

      t.timestamps
    end
  end
end
