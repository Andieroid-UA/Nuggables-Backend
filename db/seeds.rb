(1..10).each do |i|

  # Generates fake data for Users
  user = User.create(
    username: Faker::Internet.username(specifier: 3..20, separators: %w(_)),
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    password: 'password',
    password_confirmation: 'password'
  )

  # Generate fake data for Types and Forms
  rand(1..10).times do
    type = Type.create(name: Faker::Lorem.word)
    form = Form.create(name: Faker::Lorem.word)
  end

  # Generate fake data for Products
  rand(1..10).times do
    product = Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.paragraph(sentence_count: 3),
      thc: Faker::Number.decimal(l_digits: 2),
      cbd: Faker::Number.decimal(l_digits: 2),
      type: Type.all.sample,
      form: Form.all.sample
    )
  end

  # Generate fake data for Aromas
  rand(1..10).times do
    aroma = Aroma.create(
      name: Faker::Food.spice
    )
  end

  # Generate fake data for Effects
  rand(1..10).times do
    effect = Effect.create(
      name: Faker::Verb.base
    )
  end

  # Generate fake data for Benefits
  rand(1..10).times do
    benefit = Benefit.create(
      name: Faker::Food.ingredient
    )
  end

end
