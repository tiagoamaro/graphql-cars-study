# frozen_string_literal: true

module Types
  CarType = GraphQL::ObjectType.define do
    name 'Car'
    description 'Cars'

    field :id, !types.String, 'The ID of this car'
    field :name, !types.String, 'The name of this manufacturer'

    field :manufacturer, !Types::ManufacturerType, 'Manufacturer'

    connection :prices, Types::PriceType.connection_type, 'Car prices'
  end
end
