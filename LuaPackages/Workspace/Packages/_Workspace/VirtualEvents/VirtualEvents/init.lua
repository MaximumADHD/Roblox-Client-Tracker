local enums = require(script.enums)
local types = require(script.types)

export type Event = types.Event
export type Host = types.Host
export type VirtualEvent = types.VirtualEvent
export type RsvpStatus = types.RsvpStatus

return {
	-- Enums
	AnalyticsEvent = enums.AnalyticsEvent,

	-- Components
	EventDetailsPageLoader = require(script.Components.EventDetailsPageLoader),
	EventsPage = require(script.Components.EventsPage), -- Remove this line with FFlagRemoveEventsPageFromMoreTab
	ShareEventModal = require(script.Components.ShareEventModal),
	EventNotificationsModal = require(script.Components.EventNotificationsModal),
	EventsList = require(script.Components.EventsList),

	-- Functions
	installReducer = require(script.installReducer),
	isEventValid = require(script.Common.isEventValid),
	fetchSponsoredEventsOnMorePage = require(script.Common.fetchSponsoredEventsOnMorePage),
	fireEventDetailsPageVisit = require(script.Analytics.fireEventDetailsPageVisit),
	fireShareVirtualEventIconClicked = require(script.Analytics.fireShareVirtualEventIconClicked),
	fireVirtualEventJoined = require(script.Analytics.fireVirtualEventJoined),
	fireVirtualEventLinkCopied = require(script.Analytics.fireVirtualEventLinkCopied),
	fireVirtualEventRSVP = require(script.Analytics.fireVirtualEventRSVP),

	-- Hooks
	useActiveVirtualEvents = require(script.Hooks.useActiveVirtualEvents),
	useVirtualEvent = require(script.Hooks.useVirtualEvent),

	-- This gets exposed so EventDetailsWrapper can pass the attendance count
	-- off to our tracking events
	useExperienceDetails = require(script.Hooks.useExperienceDetails),

	["jest.config"] = script["jest.config"],
}
