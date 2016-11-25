class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.references :user, null: false
      t.references :question, null: false

      t.timestamps(null: false)
    end
    
    add_index :answers [:user, :question]
  end
end
