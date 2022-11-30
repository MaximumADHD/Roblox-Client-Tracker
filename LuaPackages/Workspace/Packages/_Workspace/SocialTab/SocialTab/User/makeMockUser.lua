--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local UserModel = dependencies.RoduxUsers.Models.User
local llama = dependencies.llama
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

return function(config)
	local userModel = UserModel.mock()

	return llama.Dictionary.join(userModel, {
		username = userModel.name,
		thumbnail = "rbxassetid://2610133241",
		userPresenceType = PresenceType.Offline,
		isPremium = false,
	}, config or {})
end
