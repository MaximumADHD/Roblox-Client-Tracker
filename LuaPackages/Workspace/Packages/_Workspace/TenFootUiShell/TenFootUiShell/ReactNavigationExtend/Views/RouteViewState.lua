local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local TenFootUiNavigatorTypes = require(ReactNavigationExtend.TenFootUiNavigatorTypes)

type Descriptor = TenFootUiNavigatorTypes.Descriptor

export type ViewState = "Opened" | "Opening" | "Closing"

local ViewState = {
	Opening = "Opening" :: "Opening",
	Opened = "Opened" :: "Opened",
	Closing = "Closing" :: "Closing",
}

export type OpeningRouteViewState = {
	viewState: "Opening",
	destinationKey: nil,
}
export type OpenedRouteViewState = {
	viewState: "Opened",
	destinationKey: nil,
}
export type ClosingRouteViewState = {
	viewState: "Closing",
	destinationKey: string,
}
export type RouteViewState = {
	key: string,
	name: string,
	descriptor: Descriptor,
} & (OpeningRouteViewState | OpenedRouteViewState | ClosingRouteViewState)

local RouteViewState = {
	ViewState = ViewState,
}

function RouteViewState.setOpening(routeViewState: RouteViewState): RouteViewState
	if routeViewState.viewState == ViewState.Opening then
		return routeViewState
	end
	return {
		viewState = ViewState.Opening,
		key = routeViewState.key,
		name = routeViewState.name,
		descriptor = routeViewState.descriptor,
	}
end

function RouteViewState.setClosing(routeViewState: RouteViewState, destinationKey: string): RouteViewState
	if routeViewState.viewState == ViewState.Closing then
		return routeViewState
	end

	return {
		key = routeViewState.key,
		name = routeViewState.name,
		descriptor = routeViewState.descriptor,
		viewState = ViewState.Closing,
		destinationKey = destinationKey,
	}
end

function RouteViewState.isAnimating(routeViewState: RouteViewState): boolean
	return routeViewState.viewState ~= ViewState.Opened
end

return RouteViewState
