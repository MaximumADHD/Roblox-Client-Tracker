--[[
	Returns localized "1 mutual friend" or "{x} mutual friends".
	Use useMutualFriendsText for new functional components,
	this file exists for legacy components that don't support hooks
]]
type MutualFriendsTextConfig = {
	mutualFriendsCount: number,
	localized: { mutualFriends: string, singularMutualFriend: string },
}

return function(config: MutualFriendsTextConfig): string
	local text = if config.mutualFriendsCount > 1
		then tostring(config.mutualFriendsCount) .. " " .. string.lower(config.localized.mutualFriends)
		else tostring(config.mutualFriendsCount) .. " " .. config.localized.singularMutualFriend

	return text
end
