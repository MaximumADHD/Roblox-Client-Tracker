local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.Rodux).makeActionCreator

return Action(script.Name, function(countryCode)
	return {
		countryCode = countryCode,
	}
end)
