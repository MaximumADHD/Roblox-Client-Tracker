local Cryo = require(script.Parent.Parent.Parent.Cryo)
local createNavigator = require(script.Parent.createNavigator)
local StackRouter = require(script.Parent.Parent.routers.StackRouter)
local StackView = require(script.Parent.Parent.views.StackView.StackView)

return function(config)
	local router = StackRouter(config)
	return createNavigator(StackView, router, Cryo.Dictionary.join(config, {
		routes = Cryo.None, -- navigator config doesn't need routes
	}))
end

