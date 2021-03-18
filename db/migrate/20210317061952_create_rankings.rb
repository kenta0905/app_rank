class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.string :category, null: false
      t.string :title, null: false
      t.string :choice, null: false
      t.timestamps
    end
  end
end
