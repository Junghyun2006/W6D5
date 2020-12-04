# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.delete_all
CatRentalRequest.delete_all

cat1 = Cat.create(birth_date: '2020/04/06', color: 'White', name: 'Miko', sex: 'M', description: 'Very fluffy')
cat2 = Cat.create(birth_date: '2018/02/10', color: 'Black', name: 'Whiskers', sex: 'F', description: 'Very long whiskers')
cat3 = Cat.create(birth_date: '2016/09/05', color: 'Orange', name: 'Garfield', sex: 'M', description: 'Very grumpy cat')
cat4 = Cat.create(birth_date: '2010/12/13', color: 'Brown', name: 'Jerry', sex: 'F', description: 'loves to play')
cat5 = Cat.create(birth_date: '2005/01/26', color: 'Black', name: 'Checkers', sex: 'M', description: 'can beat you in checkers')
cat6 = Cat.create(birth_date: '2008/07/26', color: 'Brown', name: 'Bob', sex: 'F', description: 'loves to bite')

req1 = CatRentalRequest.create(cat_id: 1, start_date: '2020/04/03', end_date: '2020/05/03')
req2 = CatRentalRequest.create(cat_id: 2, start_date: '2020/05/03', end_date: '2020/06/03')
req3 = CatRentalRequest.create(cat_id: 3, start_date: '2020/06/03', end_date: '2020/07/03')
req4 = CatRentalRequest.create(cat_id: 4, start_date: '2020/07/03', end_date: '2020/08/03')
req5 = CatRentalRequest.create(cat_id: 5, start_date: '2020/08/03', end_date: '2020/09/03')
req6 = CatRentalRequest.create(cat_id: 6, start_date: '2020/09/03', end_date: '2020/10/03')
