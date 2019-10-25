# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.create(title: 'Ruby 对象模型', body: %(
<h2>Ruby 是纯面向对象的语言，Ruby 中的一切都是以对象的形式出现。
Ruby中的每个值都是一个对象，字符串、数字，甚至连nil 都是对象。
类本身也是一个对象。</h2>
))
Note.create(title: 'Rails ActiveRecord', body: %(
<h2>类方法 delete() 和 delete_all()，delete() 方法的参数是 ID 或 ID 数组，作用是把对应的行从底层数据库表中删除。
delete_all() 方法删除满足指定条件的行（如果不指定条件，则删除所有行）。
这两个方法的返回值通常是受影响行数。如果要删除的行不存在，两个方法都不会抛出异常。</h2>
))