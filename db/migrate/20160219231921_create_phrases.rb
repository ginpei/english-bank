class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text :body
      t.text :source
      t.text :scene
      t.text :describe

      t.timestamps null: false
    end
  end
end
