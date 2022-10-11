local Plugin = script.Parent.Parent.Parent
local SetIKEnabled = require(Plugin.Src.Actions.SetIKEnabled)
local SetIKOpenedTimestamp = require(Plugin.Src.Actions.SetIKOpenedTimestamp)

return function(analytics)
	return function(store)
		local state = store:getState()

		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local ikEnabled = not state.Status.IKEnabled
		store:dispatch(SetIKEnabled(ikEnabled))

		if ikEnabled then
			analytics:report("onIkEnabled")
			store:dispatch(SetIKOpenedTimestamp(os.time()))
		else
			analytics:report("onIkDisabled", os.time() - state.Status.IKOpenedTimestamp)
		end
	end
end
