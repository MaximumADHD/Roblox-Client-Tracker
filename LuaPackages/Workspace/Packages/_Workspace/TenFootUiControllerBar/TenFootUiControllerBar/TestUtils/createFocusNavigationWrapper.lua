local Packages = script:FindFirstAncestor("TenFootUiControllerBar").Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local LocalizationProvider = require(Packages.Localization).LocalizationProvider
local makeMockLocalization = require(Packages.Dev.TenFootUiTesting).TestHelpers.mocks.makeMockLocalization

local function FocusNavigationWrapper(props)
	local focusGuiObject = ReactFocusNavigation.useFocusGuiObject()
	local ref = React.useCallback(function(node)
		if node then
			focusGuiObject(node, false)
		end
	end, { focusGuiObject }) :: ((Instance?) -> ())
	local eventMapRef = ReactFocusNavigation.useEventMap(props.eventMap, ref)
	local eventHandlerMapRef = ReactFocusNavigation.useEventHandlerMap(props.eventHandlerMap, eventMapRef)
	return React.createElement("Frame", { ref = eventHandlerMapRef }, props.children)
end

local function createFocusNavigationWrapper(outerProps)
	local function CreatedWrapper(innerProps)
		return React.createElement(
			LocalizationProvider,
			{
				localization = makeMockLocalization(),
			},
			React.createElement(
				ReactFocusNavigation.FocusNavigationContext.Provider,
				{ value = outerProps.focusNavigation },
				React.createElement(FocusNavigationWrapper, {
					eventMap = outerProps.eventMap,
					eventHandlerMap = outerProps.eventHandlerMap,
				}, innerProps.children)
			)
		)
	end
	return CreatedWrapper
end

return createFocusNavigationWrapper
