class CreateTopiccodes < ActiveRecord::Migration
  def change
    create_table :topiccodes do |t|
      t.integer :tcode
      t.string :tname
      t.integer :scode
      t.string :active, limit: 1

      t.timestamps
    end
  end
end
