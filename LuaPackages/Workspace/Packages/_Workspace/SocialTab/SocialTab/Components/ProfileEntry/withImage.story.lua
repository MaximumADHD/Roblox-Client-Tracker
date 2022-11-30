local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local ProfileEntry = require(script.Parent)

return function()
	return Roact.createElement(ProfileEntry, {
		avatarImage = "rbxthumb://type=AvatarHeadShot&id=422502&w=150&h=150",
		userText = "myCoolName",
		onActivated = function()
			print(">> clicked")
		end,
	})
end
