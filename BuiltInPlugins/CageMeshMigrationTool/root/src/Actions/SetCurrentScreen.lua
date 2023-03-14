local root = script:FindFirstAncestor("root")

local Action = require(root.Packages.Framework).Util.Action

return Action(script.Name, function(screen)
	return {
		screen = screen,
	}
end)
