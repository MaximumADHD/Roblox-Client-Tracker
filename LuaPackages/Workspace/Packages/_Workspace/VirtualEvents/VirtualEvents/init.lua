local enums = require(script.enums)
local types = require(script.types)

local EventNotificationsModal = require(script.Components.EventNotificationsModal)

export type Event = types.Event
export type Host = types.Host
export type VirtualEvent = types.VirtualEvent
export type RsvpStatus = types.RsvpStatus
export type EventNotificationsModalProps = EventNotificationsModal.Props

return {
	-- Enums
	AnalyticsEvent = enums.AnalyticsEvent,

	-- GraphQL queries and mutations
	requests = require(script.requests),

	-- Components
	EventDetailsPageLoader = require(script.Components.EventDetailsPageLoader),
	ShareEventModal = require(script.Components.ShareEventModal),
	EventNotificationsModal = EventNotificationsModal,
	EventsList = require(script.Components.EventsList),

	-- Functions
	installReducer = require(script.installReducer),
	fireEventDetailsPageVisit = require(script.Analytics.fireEventDetailsPageVisit),
	fireShareVirtualEventIconClicked = require(script.Analytics.fireShareVirtualEventIconClicked),
	fireVirtualEventJoined = require(script.Analytics.fireVirtualEventJoined),
	fireVirtualEventLinkCopied = require(script.Analytics.fireVirtualEventLinkCopied),
	fireVirtualEventRSVP = require(script.Analytics.fireVirtualEventRSVP),
	fireEventNotificationEnabled = require(script.Analytics.fireEventNotificationEnabled),
	fireVirtualEventImpression = require(script.Analytics.fireVirtualEventImpression),

	-- Hooks
	useActiveVirtualEvents = require(script.Hooks.useActiveVirtualEvents),
	useVirtualEvent = require(script.Hooks.useVirtualEvent),

	-- This gets exposed so EventDetailsWrapper can pass the attendance count
	-- off to our tracking events
	useExperienceDetails = require(script.Hooks.useExperienceDetails),

	["jest.config"] = script["jest.config"],
}
