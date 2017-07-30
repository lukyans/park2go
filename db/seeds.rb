class Seed

  def initialize
    generate_drivers
    generate_parkers
  end

  def generate_drivers
    5.times do |i|
      Driver.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        password: "password",
        lat: Faker::Address.latitude,
        lng: Faker::Address.longitude
        # description: Faker::Lorem.paragraph,
        # role: 0,
        # image_url: Faker::Avatar.image,
        # active?: true,
        )
      puts "#{i} user created"
    end
  end

  def generate_parkers
    5.times do |i|
      Parker.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        password: "password",
        lat: Faker::Address.latitude,
        lng: Faker::Address.longitude
        # description: Faker::Lorem.paragraph,
        # role: 0,
        # image_url: Faker::Avatar.image,
        # active?: true,
        )
      puts "#{i} user created"
    end
  end
end
  Seed.new
