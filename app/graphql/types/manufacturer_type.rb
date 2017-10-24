# frozen_string_literal: true

module Types
  ManufacturerType = GraphQL::ObjectType.define do
    name 'Manufacturer'

    field :id, !types.String, 'The ID of this manufacturer'
    field :name, !types.String, 'The name of this car'

    connection :cars, Types::CarType.connection_type, 'Manufacturer cars'
  end
end
