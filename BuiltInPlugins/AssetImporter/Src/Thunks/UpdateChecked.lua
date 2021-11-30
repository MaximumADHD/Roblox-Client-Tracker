--[[
    Set Checked Instances and Count them
]]
local Plugin = script.Parent.Parent.Parent

local GetErrorChecked = require(Plugin.Src.Utility.GetErrorChecked)
local GetCheckedCount = require(Plugin.Src.Utility.GetCheckedCount)

local SetCheckedCount = require(Plugin.Src.Actions.SetCheckedCount)
local SetTreeChecked = require(Plugin.Src.Actions.SetTreeChecked)
local SetErrorNodeChecked = require(Plugin.Src.Actions.SetErrorNodeChecked)

return function(checked)
	return function(store)
		store:dispatch(SetTreeChecked(checked))

		local state = store:getState()
		local count = GetCheckedCount(state.assetSettings)
		local isErrorChecked = GetErrorChecked(state.assetSettings)

		store:dispatch(SetErrorNodeChecked(isErrorChecked))
		store:dispatch(SetCheckedCount(count))
	end
end
