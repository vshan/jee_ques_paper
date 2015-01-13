class CreateScodes < ActiveRecord::Migration
  def change
    create_table :scodes do |t|
      t.integer :scode
      t.string :sname

      t.timestamps
    end
  end
end
