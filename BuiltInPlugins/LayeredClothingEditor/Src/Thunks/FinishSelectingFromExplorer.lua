local Plugin = script.Parent.Parent.Parent
local SetControlsPanelBlockerActivity = require(Plugin.Src.Actions.SetControlsPanelBlockerActivity)
return function(selectItem)
	return function(store)
		store:dispatch(SetControlsPanelBlockerActivity(false))
	end
end