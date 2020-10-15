-- upstream https://github.com/react-navigation/react-navigation/blob/62da341b672a83786b9c3a80c8a38f929964d7cc/packages/core/src/getChildRouter.ts
local validate = require(script.Parent.utils.validate)

return function(router, routeName)
	validate(type(router) == "table", "router must be a table")
	validate(type(routeName) == "string", "routeName must be a string")

	if router.childRouters and router.childRouters[routeName] then
		return router.childRouters[routeName]
	end

	validate(type(router.getComponentForRouteName) == "function",
		"router.getComponentForRouteName must be a function if no child routers are specified")
	local component = router.getComponentForRouteName(routeName)

	-- deviation: functional components cannot be indexed in Lua
	if type(component) == "table" then
		return component.router
	else
		return nil
	end
end
