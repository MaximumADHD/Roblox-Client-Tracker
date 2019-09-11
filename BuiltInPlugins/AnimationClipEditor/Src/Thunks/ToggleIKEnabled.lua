local Plugin = script.Parent.Parent.Parent
local SetIKEnabled = require(Plugin.Src.Actions.SetIKEnabled)

return function()
	return function(store)
		local state = store:getState()

		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local ikEnabled = not state.Status.IKEnabled
		store:dispatch(SetIKEnabled(ikEnabled))

		if ikEnabled then
			state.Analytics:onIkEnabled()
		else
			state.Analytics:onIkDisabled()
		end
	end
end