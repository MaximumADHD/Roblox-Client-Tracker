local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action("SET_INPUT_TYPE", function(inputType)
	return {
		inputType = inputType,
	}
end)