Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description 'The query root for this schema'

  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :Car do
    type Types::CarType

    argument :id, types.Int, 'ID of a car'

    resolve ->(_obj, args, _ctx) do
      args[:id] ? Car.find_by(id: args[:id]) : Car.first
    end
  end

  field :Manufacturer do
    type Types::ManufacturerType

    resolve ->(_obj, args, _ctx) do
      args[:id] ? Manufacturer.find(args[:id]) : Manufacturer.first
    end
  end

  field :Price do
    type Types::PriceType

    resolve ->(_obj, args, _ctx) do
      args[:id] ? Price.find(args[:id]) : Price.first
    end
  end
end
