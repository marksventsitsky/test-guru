# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([ {title: 'Frontend'}, {title: 'Backend'}, {title: 'Machine Learning'}])

catefory_frontend =Category.find_by(title: 'Frontend')
catefory_backend =Category.find_by(title: 'Backend')
catefory_machine_learning =Category.find_by(title: 'Machine Learning')

Test.create([
    { title: 'Html', level: 0, category_id: catefory_frontend },
    { title: 'Go', level: 1, category_id: catefory_machine_learning} ,
    { title: 'RoR', level: 3, category_id: catefory_backend },
    { title: 'AngularJS', level: 0, category_id: catefory_frontend },
    { title: 'Python', level: 1, category_id: catefory_backend }
             ])

test_html = Test.find_by(title: 'Html')
test_go = Test.find_by(title: 'Go')
test_ror = Test.find_by(title: 'RoR')
test_angularjs = Test.find_by(title: 'AngularJS')
test_python = Test.find_by(title: 'Python')

Question.create([
    { body: 'С помощью какого тега нужно задавать подписи к полям формы?', test_id: test_html },
    { body: 'Какое из следующих условий завершает оператор цикла или оператора switch и передает выполнение оператору сразу после цикла for или switch в Go?', test_id: test_go },
    { body: 'Как создается модель с помощью генератора Rails', test_id: test_ror },
    { body: 'Как правильно убрать атрибут title у элемента img?', test_id: test_angularjs },
    { body: 'Какое значение получит а? a = 2,3', test_id:  test_python}
                 ])

question_html = Question.find_by(body: 'С помощью какого тега нужно задавать подписи к полям формы?')

Answer.create([
    { body: 'id', question_id: question_html, correct: false },
    { body: 'type', question_id: question_html, correct: false },
    { body: 'label', question_id: question_html, correct: true },
    { body: 'field', question_id: question_html, correct: false }
                ])

User.create([
    {name: 'Mark', level: 0},
    {name: 'Anrey', level: 0}
            ])

user_mark = User.find_by(name: 'Mark')
user_andrey = User.find_by(name: 'Andrey')

PassingTest.create([
    { user_id: user_mark, test_id: test_html, done: false, question_id: question_html  },
    { user_id: user_andrey, test_id: test_html, done: true, question_id: question_html  }
                   ])
