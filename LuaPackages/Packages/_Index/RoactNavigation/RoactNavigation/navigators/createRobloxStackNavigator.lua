local root = script.Parent.Parent
local createNavigator = require(script.Parent.createNavigator)
local StackRouter = require(root.routers.StackRouter)
local StackView = require(root.views.RobloxStackView.StackView)

return function(routeArray, stackConfig)
	local router = StackRouter(routeArray, stackConfig)

	return createNavigator(StackView, router, stackConfig or {})
end
