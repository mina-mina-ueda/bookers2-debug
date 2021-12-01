class Bookcomments < ActiveRecord::Migration[5.2]
  def change
    drop_table :bookcomments
  end
end
