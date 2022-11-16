local Http = script:FindFirstAncestor("Http")
local Packages = Http.Parent

local Action = require(Packages.Rodux).makeActionCreator

return Action(script.Name, function(key, status)
	return {
		key = key,
		status = status
	}
end)
