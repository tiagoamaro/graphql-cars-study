# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Manufacturers
fiat   = Manufacturer.create(name: 'FIAT')
toyota = Manufacturer.create(name: 'Toyota')

# Cars
palio = Car.create(manufacturer: fiat, name: 'FIAT Palio 1.0 ECONOMY Fire Flex 8V 4p')
etios = Car.create(manufacturer: toyota, name: 'Toyota Etios XLS 1.5 Flex 16V 5p Mec.')

# Prices
# # Palio prices
Price.create(car: palio, reference: Date.parse('January 2014'), value: 24430)
Price.create(car: palio, reference: Date.parse('October 2013'), value: 22210)
Price.create(car: palio, reference: Date.parse('March 2013'), value: 24210)

# # Etios prices
Price.create(car: etios, reference: Date.parse('January 2017'), value: 47188)
Price.create(car: etios, reference: Date.parse('October 2016'), value: 45120)
Price.create(car: etios, reference: Date.parse('March 2016'), value: 43112)
Price.create(car: etios, reference: Date.parse('June 2015'), value: 41330)
Price.create(car: etios, reference: Date.parse('January 2015'), value: 39410)
