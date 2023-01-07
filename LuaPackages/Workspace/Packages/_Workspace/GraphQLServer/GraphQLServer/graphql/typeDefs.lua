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
  omniFeed(sessionId: String!, pageType: String!, nextPageToken: String): OmniFeed
}

type Experience {
  universeId: ID!
  placeId: String
  name: String!
  totalUpVotes: Int
  totalDownVotes: Int
  playerCount: Int
  description: String
  thumbnails: [Media]
}

scalar JSONObject

type OmniFeed {
  metadata: OmniFeedMetadata
  pageType: String
  sortsExpirationTime: Int
  nextPageToken: String
  isSessionExpired: Boolean
  recommendationsId: String
  omniSessionId: String
  sorts: [OmniFeedItem]
}

type OmniFeedMetadata {
  GameJSON: JSONObject @deprecated(reason: "Fetch game metadata from OmniFeedItem instead. Scheduled for deprecation on 2023-01-30")
  CatalogAssetJSON: JSONObject
  CatalogBundleJSON: JSONObject
  RecommendedFriendJSON: JSONObject
}

type OmniFeedItem {
  topicId: String
  topic: String
  treatmentType: String
  recommendations: [OmniFeedRecommendation]
  experiences: [Experience]
}

type OmniFeedRecommendation {
  contentType: String
  contentId: String
  contentMetadata: JSONObject
}

type Media {
  url: String
}
]]
