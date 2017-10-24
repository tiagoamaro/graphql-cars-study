Types::SortEnum = GraphQL::EnumType.define do
  name 'Sort'
  description 'Sorting order'

  value('ASC', 'Ascending order')
  value('DESC', 'Descending order')
end
