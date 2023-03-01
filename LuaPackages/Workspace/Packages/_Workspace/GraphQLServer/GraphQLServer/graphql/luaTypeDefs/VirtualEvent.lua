local VirtualEventTypeDef = [[
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
        none: Float
        going: Float
        maybeGoing: Float
        notGoing: Float
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
        media: [ ExperienceMedia! ]
        rsvpCounters: RsvpCounters
        rsvps: [ Rsvp! ]
    }

    input VirtualEventsByUniverseIdOptions {
        cursor: String,
        limit: Int
        fromUtc: String
    }

    type VirtualEventsPage {
        cursor: String
        virtualEvents: [ VirtualEvent! ]
    }

    type RsvpResponse {
        rsvpStatus: RsvpStatus
        isUserFirstRsvp: Boolean
    }

    type Mutation {
        virtualEventRsvp(id: ID!, rsvpStatus: RsvpStatus!): RsvpResponse
    }

    type Query {
        virtualEvent(id: ID!): VirtualEvent
        virtualEventsByUniverseId(universeId: ID!, options: VirtualEventsByUniverseIdOptions): VirtualEventsPage
    }
]]

return VirtualEventTypeDef
