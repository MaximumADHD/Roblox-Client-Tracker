local Plugin = script.Parent.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local AddChange = require(Actions.AddChange)
local ClearChange = require(Actions.ClearChange)

-- comparisonFunc can be optionally provided with the following signature (currentValue, newValue) => boolean
-- if not provided, it defaults to just using ==
return function(setting, currentValue, newValue, comparisonFunc)
	return function(store)
		local equals
		if comparisonFunc then
			equals = comparisonFunc(currentValue, newValue)
		else
			equals = currentValue == newValue
		end
		if equals then
			store:dispatch(ClearChange(setting))
		else
			store:dispatch(AddChange(setting, newValue))
		end
	end
end