local Cryo = require(script.Parent.Parent.Cryo)
local NavigationEvents = require(script.Parent.NavigationEvents)
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
		_childrenNavigation = getChildrenNavigationCache(getCurrentNavigation()),
	}

	function navigation.getChildNavigation(childKey)
		return getChildNavigation(navigation, childKey, getCurrentNavigation)
	end

	function navigation.isFocused(childKey)
		local routes = getCurrentNavigation().state.routes
		local index = getCurrentNavigation().state.index

		return not childKey or routes[index].key == childKey
	end

	function navigation.addListener(event, handler)
		if event ~= NavigationEvents.Action then
			return { disconnect = function() end }
		else
			actionSubscribers[handler] = true
			return {
				disconnect = function()
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
