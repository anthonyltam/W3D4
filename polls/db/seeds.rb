# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# tony = User.new({username: 'tony'})
# tony.save
# 
# tony_poll = Poll.new({title: "fish", author_id: Users.second.id })
# tony_poll.save
# 
# tony_question = Question.new({question: "What are fish?", poll_id: Poll.second.id })
# tony_question.save
# 
# tony_answer_choice = AnswerChoice.new({answer: "fish are food, not friends", Question.second.id})
# tony_answer_choice.save
# 
# tony_response = Response.new({answer_choice_id: AnswerChoice.second.id, user_id: User.second.id})
# tony_response.save

1.upto(10) do |i|
  #User.create!(username: "hello#{i + 10}")
  Poll.create!({title: "fish#{i}", author_id: User.all[i].id })
end
p "Created 9 users!"