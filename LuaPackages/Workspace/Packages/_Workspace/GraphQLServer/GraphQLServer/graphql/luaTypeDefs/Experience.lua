-- // https://games.roblox.com/docs/index.html

local ExperienceTypeDef = [[
    enum MediaAssetType {
        Image
        YouTubeVideo
    }

    type ExperienceMedia {
        assetTypeId: ID
        assetType: MediaAssetType
        approved: Boolean
        imageId: ID
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
        rootPlaceId: ID
        name: String
        description: String
        sourceName: String
        sourceDescription: String
        creator: ExperienceCreator
        price: Int
        allowedGearGenres: [ String ]
        allowedGearCategories: [ String ]
        isGenreEnforced: Boolean
        copyingAllowed: Boolean
        playing: Float
        visits: Float
        maxPlayers: Int
        created: String # $date-time
        updated: String # $date-time
        studioAccessToApisAllowed: Boolean
        createVipServersAllowed: Boolean
        universeAvatarType: Int
        genre: String
        isAllGenre: Boolean
        isFavoritedByUser: Boolean
        favoritedCount: Float
    }

    type Experience {
        universeId: ID!
        placeId: String
        name: String!
        totalUpVotes: Int
        totalDownVotes: Int
        playerCount: Int
        description: String
        under9: Boolean
        under13: Boolean
        adId: String
        isSponsored: Boolean
        # On mobile, this may just be one thumbnail, on desktop this can be
        # multiple thumbnails revealed on hover.
        thumbnails: [Media]
    }
]]

return ExperienceTypeDef
