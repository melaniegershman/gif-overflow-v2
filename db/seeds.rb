melanie = User.create(username: 'melanie', password: 'password', email: 'melaniegzmail.com')
sherianne = User.create(username: 'sherianne', password: 'password', email: 'sherianne@gmail.com')
allain = User.create(username: 'allain', password: 'password', email: 'allain@j.com')
jenna = User.create(username: 'jenna', password: 'password', email: 'jenna@gmail.com')
jung = User.create(username: 'jung', password: 'password', email: 'jung@gmail.com')
natalie = User.create(username: 'natalie', password: 'password', email: 'natalie@gmail.com')

dog = Question.create(title: 'Dog question', body: "Do you like dogs?", user: 1)
cat = Question.create(title: 'Cat question', body: "Is it ok to have a cat in this apartment?", user: 4)
hamster = Question.create(title: 'Hamster question', body: "Does your hamster like to eat mini pies?", user: 3)
monkey = Question.create(title: 'Monkey Question', body: "What do monkeys eat?", user: 6)
hippo = Question.create(title: 'Hippo Question', body: "Are hippos friendly?", user: 5)

answer_1 = Answer.create(body: 'duh, how could you not!', question: 1, user: 5)
answer_2 = Answer.create(body: 'As long as it will not scratch me', question: 2, user: 6)
Answer.create(body: 'Always!', question: 3)
Answer.create(body: 'yes!!!', question: 2)
answer_3 = Answer.create(body: 'bananas...', question: 4, user: 4)
answer_4 = Answer.create(body: 'never', question: 5, user: 3)

comment_1 = Comment.create(body: 'Dolore illum animi et neque accusantium.'user_id: 2, commentable: cat, )
Comment.create(body: 'Aut voluptatem illum fugit ut sit.',  user_id: 1, commentable: hippo)
Comment.create(body: 'Cedo vero adipisci. Theatrum crustulum coaegresco tonsor crastinus stabilis. Aliqua crur consequatur amor una tolero sum.', commenter_id: 1, commentable: monkey)
comment_2 = Comment.create(body: "Here is a puppy", user_id: 1, commentable: hippo)
Comment.create(body: 'Inflammatio denego necessitatibus caelestis autus illum.', user_id: 2, commentable: monkey)
Comment.create(body: 'Neque aut et nemo aut incidunt voluptates. Dolore cum est sint est. Vitae assumenda porro odio dolores fugiat. Est voluptatum quia rerum.', user_id: 1, commentable: cat)
Comment.create(body: 'What are you talking about?', user_id: 1, commentable: answer_3)
Comment.create(body: 'Cedo vero adipisci. Theatrum crustulum coaegresco tonsor crastinus stabilis. Aliqua crur consequatur amor una tolero sum.', user_id: 1, commentable: dog)
comment_3 = Comment.create(body: 'Cool man, totally cool!', user_id: 3, commentable: answer_4)


Vote.create(user_id: 1,  voteable: dog, voteable_type: 1)
Vote.create(user_id: 2, voteable: cat, voteable_type: 1  )
Vote.create(user_id: 3,  voteable: hamster, voteable_type: 1 )
Vote.create(user_id: 4, voteable: monkey, voteable_type: 1 )
Vote.create(user_id: 3,  voteable: hippo, voteable_type: 1 )

Vote.create(user_id: 3, voteable: answer_4, voteable_type: -1 )
Vote.create(user_id: 2, voteable: comment_3, voteable_type: -1  )
Vote.create(user_id: 1, voteable: comment_1, voteable_type: -1 )
Vote.create(user_id: 4, voteable: answer_3, voteable_type: -1 )
Vote.create(user_id: 5, voteable: answer_2, voteable_type: -1 )




