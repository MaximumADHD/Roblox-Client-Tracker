local NavigationActions = require(script.Parent.Parent.NavigationActions)
local validate = require(script.Parent.Parent.utils.validate)

return function(route)
	local result = {}

	-- Go back to screen identified by 'key', or the default for current route.
	function result.goBack(key)
		if key == nil and route.key then
			validate(type(route.key) == "string", ".goBack(): key should be a string")
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
			validate(type(navigateTo) == "table", ".navigate(): navigateTo must be a string or table")
			validate(params == nil, ".navigate(): params can only be provided with a string navigateTo value")
			validate(action == nil, ".navigate(): child action can only be provided with a string navigateTo value")

			return NavigationActions.navigate(navigateTo)
		end
	end

	-- Change navigation params for current route
	function result.setParams(params)
		validate(type(route.key) == "string", ".setParams(): cannot be called by the root navigator")
		return NavigationActions.setParams({ params = params, key = route.key })
	end

	return result
end
