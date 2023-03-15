local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local gql = ApolloClient.gql

local requests = {}

requests.GET_VIRTUAL_EVENT = gql([[
	query GetVirtualEvent($virtualEventId: ID!) {
		virtualEvent(id: $virtualEventId) {
			id
			title
			description
			host {
				hostId
				hostType
				hostName
				hasVerifiedBadge
			}
			universeId
			eventStatus
			eventTime {
				startUtc
				endUtc
			}
			userRsvpStatus
			experienceDetails {
				name
				playing
			}
			media {
				imageId
				assetType
			}
			rsvpCounters {
				going
			}
			rsvps {
				userId
				rsvpStatus
			}
		}
	}
]])

requests.UPDATE_RSVP_STATUS = gql([[
	mutation UpdateRsvpStatus($virtualEventId: ID!, $rsvpStatus: RsvpStatus!) {
		virtualEventRsvp(id: $virtualEventId, rsvpStatus: $rsvpStatus) {
			shouldSeeNotificationsUpsellModal
			virtualEvent {
				id
				userRsvpStatus
			}
		}
	}
]])

requests.NEVER_SHOW_NOTIFICATIONS_MODAL_AGAIN = gql([[
	mutation NeverShowNotificationModalAgain {
		virtualEvents {
			neverShowNotificationModalAgain
		}
	}
]])

requests.ENABLE_PUSH_NOTIFICATIONS = gql([[
	mutation EnablePushNotifications {
		virtualEvents {
			enablePushNotifications
		}
	}
]])

requests.GET_EVENTS_FOR_EXPERIENCE = gql([[
	query VirtualEventsForExperience($universeId: ID!, $options: VirtualEventsByUniverseIdOptions) {
		virtualEventsByUniverseId(universeId: $universeId, options: $options) {
			cursor
			virtualEvents {
				id
				title
				universeId
				description
				eventStatus
				eventTime {
					startUtc
					endUtc
				}
				userRsvpStatus
				rsvpCounters {
					going
				}
				experienceDetails {
					playing
				}
			}
		}
	}
]])

return requests
