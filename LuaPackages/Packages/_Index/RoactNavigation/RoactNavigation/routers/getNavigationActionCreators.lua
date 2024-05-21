local NavigationActions = require(script.Parent.Parent.NavigationActions)
local invariant = require(script.Parent.Parent.utils.invariant)

return function(route)
	local result = {}

	-- Go back FROM screen identified by 'key', or the default for current route.
	function result.goBack(key)
		if key == nil and route.key then
			invariant(type(route.key) == "string", ".goBack(): key should be a string")
			key = route.key
		end

		return NavigationActions.back({ key = key })
	end

	-- Navigate to a different screen, either by route name+params+action, or
	-- by passing a raw navigation table.
	function result.navigate(navigateTo, params, action)
		if type(navigateTo) == "string" then
			return NavigationActions.navigate({
				routeName = navigateTo,
				params = params,
				action = action,
			})
		else
			invariant(type(navigateTo) == "table", ".navigate(): navigateTo must be a string or table")
			invariant(params == nil, ".navigate(): params can only be provided with a string navigateTo value")
			invariant(action == nil, ".navigate(): child action can only be provided with a string navigateTo value")

			return NavigationActions.navigate(navigateTo)
		end
	end

	-- Change navigation params for current route
	function result.setParams(params)
		invariant(type(route.key) == "string", ".setParams(): cannot be called by the root navigator")
		return NavigationActions.setParams({ params = params, key = route.key })
	end

	return result
end
