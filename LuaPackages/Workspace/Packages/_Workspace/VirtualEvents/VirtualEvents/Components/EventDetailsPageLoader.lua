local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local useVirtualEvent = require(VirtualEvents.Hooks.useVirtualEvent)
local EventDetailsPage = require(VirtualEvents.Components.EventDetailsPage)

local LoadingStateContainer = UIBlox.App.Container.LoadingStateContainer
local RetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local EmptyState = UIBlox.App.Indicator.EmptyState

export type Props = EventDetailsPage.BaseProps & {
	virtualEventId: string,
	mockNetworkStatus: string?,
}

local function EventDetailsPageLoader(props: Props)
	local virtualEvent, fetchingStatus = useVirtualEvent(props.virtualEventId)
	local text = useLocalization({
		notFound = "Feature.VirtualEvents.EventNotFound",
	})

	if props.mockNetworkStatus then
		fetchingStatus = props.mockNetworkStatus
	end

	return React.createElement(LoadingStateContainer, {
		dataStatus = RetrievalStatus.fromRawValue(fetchingStatus),
		renderOnLoaded = function()
			-- EventDetailsPage takes the exact same props, just with the actual
			-- VirtualEvent object instead of the ID
			local eventDetailsProps = Cryo.Dictionary.join(props, {
				virtualEvent = virtualEvent,
				virtualEventId = Cryo.None,
			})

			return React.createElement(React.Fragment, nil, {
				EventDetailsPage = React.createElement(EventDetailsPage, eventDetailsProps),
			})
		end,
		renderOnFailed = function()
			return React.createElement(React.Fragment, nil, {
				-- TODO: Event Not Found https://jira.rbx.com/browse/EN-1540
				EventNotFound = React.createElement(EmptyState, {
					text = text.notFound,
				}),
			})
		end,
	})
end

return EventDetailsPageLoader
