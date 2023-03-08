local OmniFeedTypeDef = [[
  scalar JSONObject

  type OmniFeed {
    metadata: OmniFeedMetadata
    pageType: String
    sortsExpirationTime: Int
    nextPageToken: String
    isSessionExpired: Boolean
    # recommendationsId is used to post session data to the recommendations service.
    # In the future, this may be replaced with a Recommendation type that contains
    # more metadata, e.g. for IXP.
    recommendationsId: String
    omniSessionId: String
    sorts: [OmniFeedItem]
  }

  # Provides a compatibility layer with Rodux.
  # This should eventually be removed in favor of merging data into the FeedItemContent
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
    # In the future, the OmniFeedItem may also include friends, assets, etc.
    # These can be added as nullable types, or split out into separate
    # implementations of a generic FeedItem interface.
    experiences: [Experience]
  }

  type OmniFeedRecommendation {
    contentType: String
    contentId: String
    contentMetadata: JSONObject
  }

  type Query {
    omniFeed(sessionId: String!, pageType: String!, nextPageToken: String, supportedTreatmentTypes: [String]): OmniFeed
    omniFeedItem(sortId: String!): OmniFeedItem
  }
]]

return OmniFeedTypeDef
