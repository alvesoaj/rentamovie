# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Criando roles"
Role.create([
    { :name => "admin" },
    { :name => "client"}
])

puts "Criando users"
user = User.new({
    :name => "AJ Alves",
    :email => "admin@rentamovie.com",
    :password => "123456789",
    :address => "Rua dos bobos n 0",
    :confirmed_at => Time.now
})
user.roles << Role.find(:first, :conditions => { :name => "admin" })
user.save

User.create({
    :name => "Visitante da Loja",
    :email => "visitante@rentamovie.com",
    :password => "123456789",
    :address => "Rua dos bobos n 100",
    :confirmed_at => Time.now
})

puts "Criando movies"
Movie.create([
    { :name => "Senhor dos Aneis 1", :description => "Um filme muito bom e muito longo, sim sim...", :image => File.open("app/assets/images/movies/lordofrings1.jpg"), :quantity => 5 },
    { :name => "Senhor dos Aneis 2", :description => "Um filme muito bom e muito longo, sim sim...", :image => File.open("app/assets/images/movies/lordofrings2.jpg"), :quantity => 3 },
    { :name => "Senhor dos Aneis 3", :description => "Um filme muito bom e muito longo, sim sim...", :image => File.open("app/assets/images/movies/lordofrings3.jpg"), :quantity => 6 }
])