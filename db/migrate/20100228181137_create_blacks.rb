class CreateBlacks < ActiveRecord::Migration
  def self.up
    create_table :blacks do |t|
      t.string :description
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :blacks
  end
end
