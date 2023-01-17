local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local dependencies = require(SocialRoactChat.dependencies)
local Cryo = dependencies.Cryo

return function(userIds)
	return Cryo.List.map(userIds, function(userId)
		return string.format("rbxthumb://type=AvatarHeadShot&id=%s&w=150&h=150", tostring(userId))
	end)
end
