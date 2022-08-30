-- upstream https://github.com/react-navigation/react-navigation/blob/72e8160537954af40f1b070aa91ef45fc02bba69/packages/core/src/getNavigation.js

local Cryo = require(script.Parent.Parent.Cryo)
local Events = require(script.Parent.Events)
local getNavigationActionCreators = require(script.Parent.routers.getNavigationActionCreators)
local getChildNavigation = require(script.Parent.getChildNavigation)
local getChildrenNavigationCache = require(script.Parent.getChildrenNavigationCache)

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
				end
			}
		end
	end

	local actionCreators = Cryo.Dictionary.join(getNavigationActionCreators(navigation.state), actions)

	for actionName, _ in pairs(actionCreators) do
		navigation[actionName] = function(...)
			navigation.dispatch(actionCreators[actionName](...))
		end
	end

	return navigation
end
