class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.references :user, null: false
      t.references :answer

      t.timestamps(null: false)
    end

    add_index :questions [:user, :answer]
  end
end
