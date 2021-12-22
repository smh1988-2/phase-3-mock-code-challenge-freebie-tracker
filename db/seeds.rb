Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts "Creating companies..."
50.times {
    Company.create(
        name: Faker::Company.name, 
        founding_year: Faker::Date.between(from: '1900-01-01', to: '2021-12-22').year
    )
}

puts "Creating devs..."
50.times {
    Dev.create(name: Faker::FunnyName.name)
    }

puts "Creating freebies..."
50.times {
    Freebie.create(
        item_name: Faker::Commerce.product_name, 
        value: Faker::Number.number(digits: 10),
        company_id: Faker::Number.between(from: 1, to: 50),
        dev_id: Faker::Number.between(from: 1, to: 50),
    )
}

puts "Seeding done!"
