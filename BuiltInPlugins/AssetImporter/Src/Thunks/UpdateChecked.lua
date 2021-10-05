--[[
    Set Checked Instances and Count them
]]
local Plugin = script.Parent.Parent.Parent

local GetCheckedCount = require(Plugin.Src.Utility.GetCheckedCount)

local SetCheckedCount = require(Plugin.Src.Actions.SetCheckedCount)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)

return function(checked)
	return function(store)
		local count = GetCheckedCount(checked)

		store:dispatch(SetCheckedCount(count))
		store:dispatch(SetTreeChecked(checked))
	end
end
