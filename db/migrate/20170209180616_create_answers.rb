class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :answer, null: false
      t.boolean :correct, null: false, default: false
      t.references :question, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
