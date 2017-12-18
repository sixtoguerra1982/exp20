# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all
10.times do |i|
	u = User.create!(name: "User #{i}", email: "Email#{i}@gmail.com", password: "12345678")
	p = Post.create!(title: "Post #{i}", content: "Contenido #{i}", user: u)
	10.times do |j|
		c = p.comments.build(content: "Comentario #{j} del post #{i}", user: u, post: p)
		p.save
	end
end		