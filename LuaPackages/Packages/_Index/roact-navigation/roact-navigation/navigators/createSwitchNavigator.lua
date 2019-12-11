local Cryo = require(script.Parent.Parent.Parent.Cryo)
local createNavigator = require(script.Parent.createNavigator)
local SwitchRouter = require(script.Parent.Parent.routers.SwitchRouter)
local SwitchView = require(script.Parent.Parent.views.SwitchView)

return function(config)
	local router = SwitchRouter(config)
	return createNavigator(SwitchView, router, Cryo.Dictionary.join(config, {
		routes = Cryo.None, -- navigator config doesn't need routes, remove from props
	}))
end

