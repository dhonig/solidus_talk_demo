UserField = ::GraphQL::Field.define do
  name "user"
  description "User Details"

  argument :id, !types.ID

  type UserType

  resolve UserResolver::One
end