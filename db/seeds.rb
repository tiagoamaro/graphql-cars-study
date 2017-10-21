# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Fiat Palio Sample
fiat = Manufacturer.create(name: 'FIAT')
palio = Car.create(manufacturer: fiat, name: 'FIAT Palio 1.0 ECONOMY Fire Flex 8V 4p')
palio_zero_km = Version.create(car: palio, name: 'Zero KM a gasolina')

# Reference Table
jun_2013 = ReferenceTable.create(date: Date.parse('2013/Jun'))

# Price
Price.create(version: palio_zero_km, reference_table: jun_2013, value: 25114.00)
