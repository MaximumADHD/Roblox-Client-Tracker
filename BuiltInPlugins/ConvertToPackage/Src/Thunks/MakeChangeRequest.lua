local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Src.Actions
local AddChange = require(Actions.AddChange)
local ClearChange = require(Actions.ClearChange)

return function(setting, currentValue, newValue)
	return function(store)
		if currentValue == newValue then
			store:dispatch(ClearChange(setting))
		else
			store:dispatch(AddChange(setting, newValue))
		end
	end
end