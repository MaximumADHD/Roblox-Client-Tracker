local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local useNavigation = require(Packages.RoactUtils).Hooks.useNavigation
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiEventNameEnum = TenFootUiCommon.TenFootUiEventNameEnum
local TenFootUiContext = TenFootUiCommon.TenFootUiContext

-- this matches the function in react-focus-navigation, we should move
-- this somewhere common in the future.
local function forwardRefValue(ref: React.Ref<Instance>, value: Instance?)
	if type(ref) == "function" then
		ref(value)
	elseif type(ref) == "table" then
		ref.current = value
	end
end

local function getNextTabFromRouteName(routeName: string, tabs): string?
	for idx, tabData in tabs do
		if tabData.page == routeName then
			local nextTabData = tabs[idx + 1]
			if nextTabData ~= nil then
				return nextTabData.page
			end
		end
	end
	return nil
end

local function getPrevTabFromRouteName(routeName: string, tabs): string?
	for idx, tabData in tabs do
		if tabData.page == routeName then
			local prevTabData = tabs[idx - 1]
			if prevTabData ~= nil then
				return prevTabData.page
			end
		end
	end
	return nil
end

-- TODO: Remove and replace after CLIPS-246 is completed
function onRelease(fn)
	return function(e)
		if e.eventData.UserInputState == Enum.UserInputState.End then
			fn(e)
		end
	end
end

--[[
	This hook sets up the Focus Navigation Bindings for the app root. Right now it
	only gets used by the FocusNavigationRoot component. It contains setup for events
	related to primary navigation and should be the primary location to edit when
	updating global focus navigation in the app
]]
function useRootFocusNavigationBindings(ref: React.Ref<Instance>?)
	local wrappedRef = React.useCallback(function(instance: Instance?)
		if ref then
			forwardRefValue(ref, instance)
		end
	end, { ref })
	local tenFootUiContext = React.useContext(TenFootUiContext)
	local navigation = useNavigation()
	local currentRouteName = navigation.state.key or navigation.state.routes[navigation.state.index].key
	local tabs = if tenFootUiContext then tenFootUiContext.globalNavConfig.tabs else {}
	local previousTab = getPrevTabFromRouteName(currentRouteName, tabs)
	local nextTab = getNextTabFromRouteName(currentRouteName, tabs)
	local onTabBackward = React.useCallback(
		onRelease(function(_e)
			if previousTab then
				navigation.navigate(previousTab)
			end
		end),
		{ navigation, previousTab }
	) :: any -- TODO: fix with release of focus-navigation types

	local onTabForward = React.useCallback(
		onRelease(function(_e)
			if nextTab then
				navigation.navigate(nextTab)
			end
		end),
		{ navigation, nextTab }
	) :: any -- TODO: fix with release of focus-navigation types

	local onSearch = React.useCallback(function()
		navigation.navigate("SearchPage")
	end, { navigation }) :: any -- TODO: fix with release of focus-navigation types

	local eventMapRef = ReactFocusNavigation.useEventMap({
		[Enum.KeyCode.ButtonY] = TenFootUiEventNameEnum.Search,
		[Enum.KeyCode.ButtonR1] = TenFootUiEventNameEnum.TabForward,
		[Enum.KeyCode.ButtonL1] = TenFootUiEventNameEnum.TabBackward,
	}, wrappedRef)
	local eventHandlerMapRef = ReactFocusNavigation.useEventHandlerMap({
		[TenFootUiEventNameEnum.Search] = {
			handler = onSearch,
		},
		[TenFootUiEventNameEnum.TabForward] = {
			handler = onTabForward,
		},
		[TenFootUiEventNameEnum.TabBackward] = {
			handler = onTabBackward,
		},
	}, eventMapRef)
	return eventHandlerMapRef
end
return useRootFocusNavigationBindings
