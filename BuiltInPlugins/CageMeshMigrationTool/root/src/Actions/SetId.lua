local root = script:FindFirstAncestor("root")

local Action = require(root.Packages.DeveloperFramework).Util.Action

return Action(script.Name, function(id)
	return {
		id = id,
	}
end)
