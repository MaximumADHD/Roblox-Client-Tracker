local Plugin = script.Parent.Parent.Parent.Parent
local FFlagRemoveUILibraryDeepJoin = game:GetFastFlag("RemoveUILibraryDeepJoin")
-- TODO: jbousellam - remove with FFlagRemoveUILibraryDeepJoin
local UILibrary = require(Plugin.Packages.UILibrary)

local deepJoin = if FFlagRemoveUILibraryDeepJoin then require(Plugin.Packages.Framework).Util.deepJoin else UILibrary.Util.deepJoin

local AddChange = require(Plugin.Src.Actions.AddChange)

return function(devSubId, devSub)
	return function(store, contextItems)
		local state = store:getState()

		local oldSubs = state.Settings.Changed.DeveloperSubscriptions or state.Settings.Current.DeveloperSubscriptions
		local newSubs = deepJoin(oldSubs, {
			[devSubId] = devSub
		})

		store:dispatch(AddChange("DeveloperSubscriptions", newSubs))
	end
end