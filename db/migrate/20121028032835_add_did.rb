class AddDid < ActiveRecord::Migration
  def change
    add_column :pitches, :did, :string
  end
end
