local enums = require(script.enums)
local types = require(script.types)

export type Event = types.Event
export type Host = types.Host
export type VirtualEvent = types.VirtualEvent

return {
	-- Enums
	AnalyticsEvent = enums.AnalyticsEvent,

	-- Components
	EventDetailsPageLoader = require(script.Components.EventDetailsPageLoader),
	EventsPage = require(script.Components.EventsPage),
	ShareEventModal = require(script.Components.ShareEventModal),

	-- Functions
	installReducer = require(script.installReducer),
	isEventValid = require(script.Common.isEventValid),
	sendEventDeferred = require(script.Common.sendEventDeferred),
	fetchSponsoredEventsOnMorePage = require(script.Common.fetchSponsoredEventsOnMorePage),

	-- Hooks
	useActiveVirtualEvents = require(script.Hooks.useActiveVirtualEvents),
	useVirtualEvent = require(script.Hooks.useVirtualEvent),

	["jest.config"] = script["jest.config"],
}
