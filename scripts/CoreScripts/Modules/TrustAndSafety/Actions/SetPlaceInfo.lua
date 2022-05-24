local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(name, description)
	return {
		name = name,
		description = description,
	}
end)
