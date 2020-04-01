local StarterGui = game:GetService("StarterGui")

local TopBar = script.Parent

local SetTopBarEnabled = require(TopBar.Actions.SetTopBarEnabled)

local function registerSetCores(store)
	StarterGui:RegisterSetCore("TopbarEnabled", function(enabled)
		if type(enabled) == "boolean" then
			store:dispatch(SetTopBarEnabled(enabled))
		else
			error("SetCore TopbarEnabled argument must be a boolean", 2)
		end
	end)

	StarterGui:RegisterGetCore("TopbarEnabled", function()
		return store:getState().displayOptions.topbarEnabled
	end)
end

return registerSetCores