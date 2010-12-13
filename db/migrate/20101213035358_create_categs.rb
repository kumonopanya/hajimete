class CreateCategs < ActiveRecord::Migration
  def self.up
    create_table :categs do |t|
      t.string :name
      t.text :dscr

      t.timestamps
    end
  end

  def self.down
    drop_table :categs
  end
end
