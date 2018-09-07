class CreateQuestion < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :question
      t.integer :poll_id 
    end
    add_index(:questions, :poll_id, {unique: true})
  end
end
