# frozen_string_literal: true

module Types
  PriceType = GraphQL::ObjectType.define do
    name 'Price'
    description 'Car prices'

    field :value, !types.Float, 'Car price'
    field :reference, !types.String, 'Price date reference'
    field :car, !Types::CarType, 'Car'
  end
end
