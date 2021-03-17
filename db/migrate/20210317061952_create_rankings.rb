class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.string :nickname, null: false
      t.timestamps
    end
  end
end
