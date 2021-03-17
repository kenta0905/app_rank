class CreateRankingUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :ranking_users do |t|
      t.references :ranking, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
