local RoduxShareLinks = script:FindFirstAncestor("RoduxShareLinks")
local Root = RoduxShareLinks.Parent
local Rodux = require(Root.Rodux)

export type Action = {}

return Rodux.makeActionCreator(script.Name, function(): Action
	return {}
end)
