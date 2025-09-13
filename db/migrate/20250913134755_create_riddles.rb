class CreateRiddles < ActiveRecord::Migration[8.0]
  def change
    create_table :riddles do |t|
      t.text :hint
      t.text :answer

      t.timestamps
    end
  end
end
