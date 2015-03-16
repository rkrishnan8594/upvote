# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Link.create(name: 'Google', url: 'http://www.google.com', votes: 0)
Link.create(name: 'Upstatement', url: 'http://www.upstatement.com', votes: 0)
Link.create(name: 'Grantland', url: 'http://www.grantland.com', votes: 0)
Link.create(name: 'Random House', url: 'http://www.randomhousebooks.com', votes: 0)

Category.create(name: 'Rails', link_id: 2, link_id: 3)
