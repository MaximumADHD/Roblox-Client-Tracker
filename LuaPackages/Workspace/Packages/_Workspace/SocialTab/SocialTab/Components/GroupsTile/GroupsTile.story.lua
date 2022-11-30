local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local GroupsTile = require(script.Parent)

return function()
	return Roact.createElement(GroupsTile)
end
