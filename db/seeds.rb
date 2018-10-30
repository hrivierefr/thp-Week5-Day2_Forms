20.times do
	user = User.create!(
		username: Faker::Name.name,
		email: Faker::Internet.email,
		bio: Faker::Lorem.paragraph
		)
end