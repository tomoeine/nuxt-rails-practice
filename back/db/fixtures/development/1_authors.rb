5.times do |n|
  Author.seed_once(:id,
                    {
                      id: n + 1,
                      name: Faker::Name.name
                    })
end
