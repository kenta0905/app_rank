class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.string :title, null: false
      t.string :category, null: false
      t.string :choice_a, null: false
      t.string :choice_b, null: false
      t.string :choice_c, null: false
      t.string :choice_d, null: false
      t.string :choice_e, null: false
      t.timestamps
    end
  end
end
