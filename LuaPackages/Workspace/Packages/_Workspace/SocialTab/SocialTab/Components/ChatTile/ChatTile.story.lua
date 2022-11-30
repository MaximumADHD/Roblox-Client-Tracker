local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local ChatTile = require(script.Parent)

return function()
	return Roact.createElement(ChatTile)
end
