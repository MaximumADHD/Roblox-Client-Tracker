-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/getNavigation.js

local root = script.Parent
local Packages = root.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local Events = require(root.Events)
local getNavigationActionCreators = require(root.routers.getNavigationActionCreators)
local getChildNavigation = require(root.getChildNavigation)
local getChildrenNavigationCache = require(root.getChildrenNavigationCache)

return function(router, state, dispatch, actionSubscribers, getScreenProps, getCurrentNavigation)
	local actions = router.getActionCreators(state, nil)

	local navigation = {
		actions = actions,
		router = router,
		state = state,
		dispatch = dispatch,
		getScreenProps = getScreenProps,
		-- deviation: `dangerouslyGetParent` is renamed as private because
		-- it is deprecated in latest react navigation
		_dangerouslyGetParent = function()
			return nil
		end,
		isFirstRouteInParent = function()
			return true
		end,
		_childrenNavigation = getChildrenNavigationCache(getCurrentNavigation()),
	}

	function navigation.getChildNavigation(childKey)
		return getChildNavigation(navigation, childKey, getCurrentNavigation)
	end

	function navigation.isFocused(childKey)
		local currentState = getCurrentNavigation().state
		local routes = currentState.routes
		local index = currentState.index

		return childKey == nil or routes[index].key == childKey
	end

	function navigation.addListener(event, handler)
		if event ~= Events.Action then
			return { remove = function() end }
		else
			actionSubscribers[handler] = true
			return {
				remove = function()
					actionSubscribers[handler] = nil
				end,
			}
		end
	end

	local actionCreators = Object.assign(getNavigationActionCreators(navigation.state), actions)

	for actionName, _ in actionCreators do
		navigation[actionName] = function(...)
			navigation.dispatch(actionCreators[actionName](...))
		end
	end

	return navigation
end
