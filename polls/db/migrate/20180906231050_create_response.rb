class CreateResponse < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :user_id
    end
    add_index(:responses, :answer_choice_id, {unique: true})
    add_index(:responses, :user_id, {unique: true})
  end
end
