local Plugin = script.Parent.Parent.Parent
local ReleaseEditor = require(Plugin.Src.Thunks.ReleaseEditor)

local AnalyticsGlobals = require(Plugin.Src.Util.AnalyticsGlobals)

return function(plugin, analytics, meshEditingContext)
	return function(store)
		local hasPublished = AnalyticsGlobals.HasPublished
		local currentScreen = AnalyticsGlobals.CurrentScreen

		plugin:Deactivate()
		store:dispatch(ReleaseEditor())
		meshEditingContext:cleanup()

		if not hasPublished then
			analytics:getHandler("ExitScreen")(currentScreen)
		end

		AnalyticsGlobals.HasPublished = false
	end
end