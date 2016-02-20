class AddTranslationToPhrase < ActiveRecord::Migration
  def change
    add_column :phrases, :translation, :text
  end
end
