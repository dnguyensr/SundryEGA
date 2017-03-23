class AddUserRefToPhotographer < ActiveRecord::Migration[5.0]
  def change
    add_reference :photographers, :user, foreign_key: true
  end
end
