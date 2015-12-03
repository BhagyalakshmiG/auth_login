class AddProfileToUser < ActiveRecord::Migration
  def change
    add_reference :users, :profiles, index: true, foreign_key: true
  end
end
