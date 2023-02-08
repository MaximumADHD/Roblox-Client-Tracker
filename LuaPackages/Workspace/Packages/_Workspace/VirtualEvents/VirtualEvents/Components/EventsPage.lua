-- Remove this file with FFlagRemoveEventsPageFromMoreTab

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useNavigation = require(VirtualEvents.Parent.RoactUtils).Hooks.useNavigation
local useSelector = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local network = require(VirtualEvents.network)
local RoduxNetworking = network.RoduxNetworking
local NetworkingSponsoredEvents = network.NetworkingSponsoredEvents
local types = require(VirtualEvents.types)
local EventGridContainer = require(script.Parent.EventGridContainer)

local LoadingStateContainer = UIBlox.App.Container.LoadingStateContainer
local UIBloxRetrievalStatus = UIBlox.App.Loading.Enum.RetrievalStatus
local EmptyState = UIBlox.App.Indicator.EmptyState

local TOP_PADDING = 24

local function selectSponsoredEvents(state)
	return state.VirtualEvents.legacy
end

local function selectSponsoredEventsFetchingStatus(state)
	return NetworkingSponsoredEvents.GetSponsoredEvents.getStatus(state)
end

export type Props = {
	mockDataStatus: string?,
}

local function EventsPage(props: Props)
	local dispatch = useDispatch()
	local navigation = useNavigation()
	local sponsoredEvents = useSelector(selectSponsoredEvents)
	local sponsoredEventsFetchingStatus = useSelector(selectSponsoredEventsFetchingStatus)
	local localized = useLocalization({
		failedMessage = "Feature.EmptyStatePage.Message.NoInternet",
	})

	if props.mockDataStatus then
		sponsoredEventsFetchingStatus = props.mockDataStatus
	end

	local dispatchFetchSponsoredEvents = React.useCallback(function()
		dispatch(NetworkingSponsoredEvents.GetSponsoredEvents.API())
	end, {})

	local onButtonActivated = React.useCallback(function(event: types.SponsoredEvent)
		navigation.navigate({
			routeName = "GenericWebPage", --AppPage.GenericWebPage,
			params = {
				detail = event.url,
				extraProps = {
					title = event.title,
				},
			},
		})
	end, { navigation })

	local renderOnLoaded = React.useCallback(function()
		return React.createElement("Frame", {
			Position = UDim2.new(0, 0, 0, TOP_PADDING),
			Size = UDim2.new(1, 0, 1, -TOP_PADDING),
			BackgroundTransparency = 1,
		}, {
			EventGridContainer = React.createElement(EventGridContainer, {
				sponsoredEvents = sponsoredEvents,
				onButtonActivated = onButtonActivated,
			}),
		})
	end, { sponsoredEvents, onButtonActivated } :: { any })

	local renderOnFailed = React.useCallback(function()
		return React.createElement(EmptyState, {
			onActivated = dispatchFetchSponsoredEvents,
			text = localized.failedMessage,
		})
	end, { localized })

	React.useEffect(function()
		if sponsoredEventsFetchingStatus == RoduxNetworking.Enum.NetworkStatus.NotStarted then
			dispatchFetchSponsoredEvents()
		end
	end, {})

	return React.createElement(LoadingStateContainer, {
		dataStatus = UIBloxRetrievalStatus.fromRawValue(sponsoredEventsFetchingStatus),
		renderOnFailed = renderOnFailed,
		renderOnLoaded = renderOnLoaded,
	})
end

return EventsPage
