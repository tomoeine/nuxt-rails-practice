5.times do |n|
  Book.seed_once(:id,
                    {
                      id: n + 1,
                      author_id: n + 1,
                      title: Faker::Book.title,
                      description: Faker::Lorem.paragraph,
                      published_at: Faker::Date.between(from: 1000.days.ago, to: Date.today)
                    })
end
