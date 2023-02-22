return [[
enum MediaAssetType {
  Image
  YouTubeVideo
}

type ExperienceMedia {
  assetTypeId: ID
  assetType: MediaAssetType
  approved: Boolean
  imageId: Int
  videoHash: String
  videoTitle: String
  altText: String
}

type ExperienceCreator {
  id: ID!
  name: String
  type: String
  isRNVAccount: Boolean
  hasVerifiedBadge: Boolean
}

type ExperienceDetails {
  id: ID!
  rootPlaceId: Int
  name: String
  description: String
  sourceName: String
  sourceDescription: String
  creator: ExperienceCreator
  price: Int
  allowedGearGenres: [String]
  allowedGearCategories: [String]
  isGenreEnforced: Boolean
  copyingAllowed: Boolean
  playing: Int
  visits: Int
  maxPlayers: Int
  created: String
  updated: String
  studioAccessToApisAllowed: Boolean
  createVipServersAllowed: Boolean
  universeAvatarType: Int
  genre: String
  isAllGenre: Boolean
  isFavoritedByUser: Boolean
  favoritedCount: Int
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

type Query {
  omniFeed(sessionId: String!, pageType: String!, nextPageToken: String, supportedTreatmentTypes: [String]): OmniFeed
  virtualEvent(id: ID!): VirtualEvent
  virtualEventsByUniverseId(universeId: ID!, options: VirtualEventsByUniverseIdOptions): VirtualEventsPage
}

type Media {
  url: String
}

enum EventStatus {
  unpublished
  active
  cancelled
}

enum RsvpStatus {
  none
  going
  maybeGoing
  notGoing
}

enum HostType {
  user
  group
}

type EventTime {
  startUtc: String
  endUtc: String
}

type Host {
  hostId: ID
  hostType: HostType
  hostName: String
  hasVerifiedBadge: Boolean
}

type Rsvp {
  userId: ID
  rsvpStatus: RsvpStatus
}

type RsvpCounters {
  none: Int
  going: Int
  maybeGoing: Int
  notGoing: Int
}

type VirtualEvent {
  id: ID!
  title: String
  description: String
  host: Host
  universeId: ID
  eventStatus: EventStatus
  eventTime: EventTime
  createdUtc: String
  updatedUtc: String
  userRsvpStatus: RsvpStatus
  experienceDetails: ExperienceDetails
  media: [ExperienceMedia]
  rsvpCounters: RsvpCounters
  rsvps: [Rsvp]
}

input VirtualEventsByUniverseIdOptions {
  cursor: String
  limit: Int
  fromUtc: String
}

type VirtualEventsPage {
  cursor: String
  virtualEvents: [VirtualEvent]
}

type RsvpResponse {
  rsvpStatus: RsvpStatus
  isUserFirstRsvp: Boolean
}

type Mutation {
  virtualEventRsvp(id: ID!, rsvpStatus: RsvpStatus!): RsvpResponse
}
]]
