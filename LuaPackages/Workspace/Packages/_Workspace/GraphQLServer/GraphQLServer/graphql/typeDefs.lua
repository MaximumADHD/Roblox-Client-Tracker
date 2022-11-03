return [[
interface User {
  id: ID!
  displayName: String!
}

type Player implements User {
  id: ID!
  displayName: String!
  avatarHeadshot: String!
}

type Query {
  me: User!
  user(id: ID!): User!
}
]]
