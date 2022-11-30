local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact

local ProfileEntry = require(script.Parent)

return function()
	return Roact.createElement(ProfileEntry, {
		-- Usernames can be 3 to 20 characters long
		userText = string.rep("a", 20),
	})
end
