local Cryo = require(script.Parent.Parent.Parent.Cryo)
local createNavigator = require(script.Parent.createNavigator)
local SwitchRouter = require(script.Parent.Parent.routers.SwitchRouter)
local SwitchView = require(script.Parent.Parent.views.SwitchView)

--[[
	Creates a navigator component that provides simple screen "switcher" behavior.
	Each page is mutually exclusive and no transition animation is used.

	Additional config options:
		order : List<string>
			Specifies the index order for page components, e.g. for use with tab bars.
		keepVisitedScreensMounted : Boolean (false)
			Set to true if you want to keep previously visited screens mounted for better performance.
		resetOnBlur : Boolean (true)
			Set to false if you want to preserve existing state for child navigators.
		backBehavior : BackBehavior (None)
			Set to BackBehavior.InitialRoute to allow a goBack() operation to return to the
			initial route name. By default, the SwitchNavigator will not do anything on a back action.
]]
return function(config)
	local router = SwitchRouter(config)
	return createNavigator(SwitchView, router, Cryo.Dictionary.join(config, {
		routes = Cryo.None, -- navigator config doesn't need routes, remove from props
	}))
end

