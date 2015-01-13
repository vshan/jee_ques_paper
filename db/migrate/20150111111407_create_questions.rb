class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.text :opa
      t.text :opb
      t.text :opc
      t.text :opd
      t.string :ro
      t.date :year
      t.integer :examcode
      t.integer :subjectcode
      t.integer :topiccode
      t.integer :stopiccode

      t.timestamps
    end
  end
end
