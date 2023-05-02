local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local ReactNavigationExtend = TenFootUiShell.ReactNavigationExtend
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Object = LuauPolyfill.Object
local RoactUtils = require(Packages.RoactUtils)
local usePrevious = RoactUtils.Hooks.usePrevious
local useArrayCollection = RoactUtils.Hooks.useArrayCollection

local RouteViewState = require(ReactNavigationExtend.Views.RouteViewState)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local areRoutesEqual = require(ReactNavigationExtend.Hooks.areRoutesEqual)

type RouteState = TenFootUiCommon.RouteState
type Descriptor = TenFootUiCommon.Descriptor
type NavigationState = TenFootUiCommon.NavigationState
type RouteViewState = RouteViewState.RouteViewState
type ScreenInfo = RouteViewState & { visible: boolean }
type ViewState = RouteViewState.ViewState

type useStackScreensConfig = {
	navigationState: NavigationState,
	descriptors: { [string]: Descriptor },
	completeTransition: (toChildKey: string?) -> (),
}

local function isScreenTransparent(descriptor: Descriptor): boolean
	return descriptor.options.screenKind == "Overlay"
end

local function handleInitialState(
	navigationState: NavigationState,
	descriptors: { [string]: Descriptor },
	completeTransition: (toChildKey: string?) -> ()
): { RouteViewState }
	if navigationState.isTransitioning then
		-- Complete the ongoing transition
		completeTransition(nil)
	end

	local initialRouteViewStatesValues = {}
	for i = 1, navigationState.index do
		local route = navigationState.routes[i]
		local routeViewState: RouteViewState = {
			key = route.key,
			name = route.routeName,
			viewState = "Opened" :: "Opened",
			descriptor = descriptors[route.key],
		}
		table.insert(initialRouteViewStatesValues, routeViewState)
	end
	return initialRouteViewStatesValues
end

local function handleUpdateState(
	currentRouteViewStatesValues: { RouteViewState },
	routes: { RouteState },
	descriptors: { [string]: Descriptor },
	activeKey: string
): { RouteViewState }
	local nextRouteViewStatesValues: { RouteViewState } = {}

	-- update current route view states
	local currentKeys = {}
	for _, route in routes do
		currentKeys[route.key] = true
	end
	for _, routeViewState in currentRouteViewStatesValues do
		local nextRouteViewState: RouteViewState? = routeViewState
		local viewState: ViewState = routeViewState.viewState
		if currentKeys[routeViewState.key] then
			if viewState == "Closing" then
				nextRouteViewState = RouteViewState.setOpening(routeViewState)
			end
		else
			if viewState == "Opening" or viewState == "Opened" then
				nextRouteViewState = RouteViewState.setClosing(routeViewState, activeKey)
			end
		end
		if nextRouteViewState ~= nil then
			table.insert(nextRouteViewStatesValues, nextRouteViewState)
			currentKeys[routeViewState.key] = nil
		end
	end

	-- insert new route view states
	for _, route in routes do
		local routeKey = route.key
		if currentKeys[routeKey] then
			table.insert(nextRouteViewStatesValues, {
				key = routeKey,
				name = route.routeName,
				viewState = "Opening" :: "Opening",
				descriptor = descriptors[routeKey],
			})
		end
	end

	return nextRouteViewStatesValues
end

local function useStackScreens(config: useStackScreensConfig): {
	screens: { ScreenInfo },
	setOpened: (ScreenInfo) -> (),
	setClosed: (ScreenInfo) -> (),
}
	local navigationState = config.navigationState
	local previousState = usePrevious(navigationState)
	local descriptors = config.descriptors
	local completeTransition = config.completeTransition
	local activeKey = navigationState.routes[navigationState.index].key

	local currentRouteViewStates = useArrayCollection({} :: { RouteViewState })

	React.useEffect(
		function()
			local updatedRouteViewStates: { RouteViewState }
			if previousState == nil then
				updatedRouteViewStates = handleInitialState(navigationState, descriptors, completeTransition)
			else
				if areRoutesEqual(navigationState.routes, previousState.routes) then
					return
				end
				updatedRouteViewStates =
					handleUpdateState(currentRouteViewStates.values, navigationState.routes, descriptors, activeKey)
			end
			currentRouteViewStates.set(updatedRouteViewStates)
		end,
		{ navigationState, previousState, descriptors, currentRouteViewStates, completeTransition, activeKey } :: { any }
	)

	local cardStack: { ScreenInfo } = {}
	local isScreenBelowVisible = true

	for i = #currentRouteViewStates.values, 1, -1 do
		local routeViewState = currentRouteViewStates.values[i]
		table.insert(cardStack, Object.assign({ visible = isScreenBelowVisible }, routeViewState))

		if isScreenBelowVisible then
			if
				not isScreenTransparent(routeViewState.descriptor) and not RouteViewState.isAnimating(routeViewState)
			then
				isScreenBelowVisible = false
			end
		end
	end

	Array.reverse(cardStack)

	local function setOpened(route: ScreenInfo)
		local result = currentRouteViewStates.findFirst(function(otherRoute)
			return otherRoute.key == route.key
		end)
		if result and result.value.viewState ~= "Opened" then
			currentRouteViewStates.replaceAt(result.index, {
				key = route.key,
				name = route.name,
				viewState = "Opened" :: "Opened",
				descriptor = route.descriptor,
			})

			if activeKey == route.key and navigationState.isTransitioning then
				completeTransition(route.key)
			end
		end
	end

	local function setClosed(route: ScreenInfo)
		local result = currentRouteViewStates.findFirst(function(otherRoute)
			return otherRoute.key == route.key
		end)

		if
			route.viewState == "Closing"
			and route.destinationKey ~= nil
			and result
			and result.index
			and currentRouteViewStates.remove(result.value)
		then
			if activeKey == route.destinationKey and navigationState.isTransitioning then
				completeTransition(route.destinationKey)
			end
		end
	end

	return {
		screens = cardStack,
		setOpened = setOpened,
		setClosed = setClosed,
	}
end

return useStackScreens
