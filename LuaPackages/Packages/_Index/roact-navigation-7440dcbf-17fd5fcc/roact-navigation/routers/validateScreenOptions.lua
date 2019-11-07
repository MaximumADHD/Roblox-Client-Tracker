local validate = require(script.Parent.Parent.utils.validate)

return function(screenOptions, route)
	validate(type(screenOptions) == "table", "screenOptions must be a table")
	validate(type(route) == "table", "route must be a table")
	validate(type(route.routeName) == "string", "route.routeName must be a string")
	validate(type(screenOptions.title) ~= "function",
		"title cannot be defined as a function in navigation options for screen '%s'",
	route.routeName)
end

