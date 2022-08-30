local invariant = require(script.Parent.Parent.utils.invariant)

return function(screenOptions, route)
	invariant(type(screenOptions) == "table", "screenOptions must be a table")
	invariant(type(route) == "table", "route must be a table")
	invariant(type(route.routeName) == "string", "route.routeName must be a string")
	invariant(type(screenOptions.title) ~= "function",
		"title cannot be defined as a function in navigation options for screen '%s'",
		route.routeName)
end
