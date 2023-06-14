local CorePackages = game:GetService("CorePackages")

local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(name, description)
	return {
		gameName = name,
		gameDescription = description,
	}
end)
