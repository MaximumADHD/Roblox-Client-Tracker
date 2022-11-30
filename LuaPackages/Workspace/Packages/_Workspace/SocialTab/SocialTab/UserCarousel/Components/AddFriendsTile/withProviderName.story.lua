local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local AddFriendsTile = require(script.Parent)

return function()
	return Roact.createElement(AddFriendsTile, {
		accountProviderName = "Norman",
		wideMode = true,
		shouldInviteFromAccountProvider = true,
		totalHeight = 120,
	})
end
