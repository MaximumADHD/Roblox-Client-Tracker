local Plugin = script.Parent.Parent.Parent.Parent
local UILibrary = require(Plugin.UILibrary)

local deepJoin = UILibrary.Util.deepJoin

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