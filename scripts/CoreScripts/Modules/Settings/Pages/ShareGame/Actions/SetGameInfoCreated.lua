local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(created)
	return {
		Created = created,
	}
end)
