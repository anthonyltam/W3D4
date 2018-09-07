class CreateAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.text :answer
      t.integer :question_id 
    end
    add_index(:answer_choices, :question_id, { unique: true})
  end
end
