class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.references :quizz, foreign_key: true, index: true

      t.timestamps
    end
  end
end
