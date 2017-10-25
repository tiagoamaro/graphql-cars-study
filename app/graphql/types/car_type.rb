module Types
  CarType = GraphQL::ObjectType.define do
    name 'Car'
    description 'Cars'

    field :id, !types.String, 'The ID of this car'
    field :name, !types.String, 'The name of this manufacturer'

    field :manufacturer, !Types::ManufacturerType, 'Manufacturer'

    connection :prices, Types::PriceType.connection_type, 'Car prices' do
      argument :page, types.Int, 'Page number'
      argument :value_order, Types::SortEnum, default_value: 'DESC'

      resolve ->(_car, args, _ctx) {
        Price
          .order(value: args['value_order'])
          .page(args[:page])
      }
    end
  end
end
