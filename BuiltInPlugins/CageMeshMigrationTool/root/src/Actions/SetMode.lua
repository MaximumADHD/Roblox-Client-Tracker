local root = script:FindFirstAncestor("root")

local Action = require(root.Packages.DeveloperFramework).Util.Action

return Action(script.Name, function(mode)
	return {
		mode = mode,
	}
end)
