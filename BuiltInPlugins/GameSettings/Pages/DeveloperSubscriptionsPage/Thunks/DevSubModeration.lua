local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent

local ModerationAction = require(Page.Actions.DevSubModeration)
local AddTableKeyErrors = require(Plugin.Src.Actions.AddTableKeyErrors)

return function(devSub)
	return function(store, contextItems)
		local devSubKey = devSub.Key
		local devSubsController = contextItems.developerSubscriptionsController
		store:dispatch(ModerationAction(devSubKey, true, nil ,nil))

		local isAcceptable, filteredName, filteredDescription = devSubsController:getFilteredDevSub(devSub)
		store:dispatch(ModerationAction(devSubKey, isAcceptable, filteredName, filteredDescription))
		if not isAcceptable then
			store:dispatch(AddTableKeyErrors("DeveloperSubscriptions", devSubKey, "Name", {Moderated = "Name has been moderated"}))
		end
	end
end