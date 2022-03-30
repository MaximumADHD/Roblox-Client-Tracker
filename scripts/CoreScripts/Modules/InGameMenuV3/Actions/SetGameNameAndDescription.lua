local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(name, description, creator)
	return {
		gameName = name,
		gameDescription = description,
		gameCreator = creator,
	}
end)
