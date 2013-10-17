# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

TaskCategory.create(name: 'cardio')
TaskCategory.create(name: 'strength')

# fetch references back from db to save ids.
cat_cardio = TaskCategory.find_by_name('cardio')
cat_strength = TaskCategory.find_by_name('strength')

# cardio types.
TaskType.create(name: 'treadmill', task_category_id: cat_cardio.id)
TaskType.create(name: 'ellipitical', task_category_id: cat_cardio.id)
TaskType.create(name: 'bike', task_category_id: cat_cardio.id)
TaskType.create(name: 'run', task_category_id: cat_cardio.id)

# strength tyeps
TaskType.create(name: 'chest', task_category_id: cat_strength.id)
TaskType.create(name: 'shoulder', task_category_id: cat_strength.id)
TaskType.create(name: 'back', task_category_id: cat_strength.id)
TaskType.create(name: 'bicep', task_category_id: cat_strength.id)
TaskType.create(name: 'tricep', task_category_id: cat_strength.id)
TaskType.create(name: 'quad', task_category_id: cat_strength.id)
TaskType.create(name: 'glutes', task_category_id: cat_strength.id)
TaskType.create(name: 'legs', task_category_id: cat_strength.id)
