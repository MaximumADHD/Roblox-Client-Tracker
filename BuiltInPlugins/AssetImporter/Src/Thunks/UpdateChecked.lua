--[[
    Set Checked Instances and Count them
]]
local Plugin = script.Parent.Parent.Parent

local GetCheckedCount = require(Plugin.Src.Utility.GetCheckedCount)

local SetCheckedCount = require(Plugin.Src.Actions.SetCheckedCount)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)

return function(checked)
	return function(store)
		store:dispatch(SetTreeChecked(checked))

		local state = store:getState()
		local count = GetCheckedCount(state.assetSettings)

		store:dispatch(SetCheckedCount(count))
	end
end
