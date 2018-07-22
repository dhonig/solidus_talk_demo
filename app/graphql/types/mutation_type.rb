Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  field :helloWorld, function: Resolvers::HelloWorld
end
