local Plugin = script.Parent.Parent.Parent.Parent

local deepJoin = require(Plugin.Packages.Framework).Util.deepJoin

local AddChange = require(Plugin.Src.Actions.AddChange)

return function(devSubId, key, value)
	return function(store, contextItems)
		local state = store:getState()

		local oldSubs = state.Settings.Changed.DeveloperSubscriptions or state.Settings.Current.DeveloperSubscriptions
		local newSubs = deepJoin(oldSubs, {
			[devSubId] = {
				[key] = value,
			},
		})

		store:dispatch(AddChange("DeveloperSubscriptions", newSubs))
	end
end
