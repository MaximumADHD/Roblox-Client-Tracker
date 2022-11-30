local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local ProfileEntry = require(script.Parent)

return function()
	return Roact.createElement(ProfileEntry, {
		avatarImage = "rbxthumb://type=AvatarHeadShot&id=1&w=150&h=150",
		userText = "myCoolName",
		isPremium = true,
	})
end
