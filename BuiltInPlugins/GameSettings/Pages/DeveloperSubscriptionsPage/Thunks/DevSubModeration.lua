local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent

local ModerateDevSub = require(Plugin.Src.Networking.Requests.DevSubs.Moderation).Get
local ModerationAction = require(Page.Actions.DevSubModeration)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)

return function(devSub)
	return function(store)
		local devSubKey = devSub.Key
		store:dispatch(ModerationAction(devSubKey, true, nil ,nil))

		ModerateDevSub(devSub):andThen(function(data)
			store:dispatch(ModerationAction(devSubKey, data.isAcceptable, data.filteredName, data.filteredDescription))
			if not data.isAcceptable then
				store:dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, "Name", {Moderated = "Name has been moderated"}))
			end
		end)
		:catch(function(err)
			-- If the action fails (http failure?), let them pass and only do final checks on saving the settings
			store:dispatch(ModerationAction(devSubKey, true, nil, nil))
		end)
	end
end