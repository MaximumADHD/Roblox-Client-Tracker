local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact

local PlayerTileRequestActionButtons = require(script.Parent)

return function()
	return Roact.createElement(PlayerTileRequestActionButtons)
end
