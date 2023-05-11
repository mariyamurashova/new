class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body, null:false
      t.integer :correct, default: 1
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end