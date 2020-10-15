-- upstream https://github.com/react-navigation/react-navigation/blob/fcd7d83c4c33ad1fa508c8cfe687d2fa259bfc2c/packages/core/src/navigators/createStackNavigator.tsx
local Cryo = require(script.Parent.Parent.Parent.Cryo)
local createNavigator = require(script.Parent.createNavigator)
local StackRouter = require(script.Parent.Parent.routers.StackRouter)
local StackView = require(script.Parent.Parent.views.StackView.StackView)

return function(routeArray, stackConfig)
	local router = StackRouter(routeArray, stackConfig)

	if routeArray.routes then
		stackConfig = Cryo.Dictionary.join(routeArray, {
			routes = Cryo.None,
		})
	end

	return createNavigator(StackView, router, stackConfig or {})
end
