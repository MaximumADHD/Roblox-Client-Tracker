local FriendsCarousel = script.Parent.Parent
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

return function(user: LocalTypes.User)
	local universeId
	if user.isFriendWithUser then
		local friend: LocalTypes.Friend = user :: any
		universeId = friend.universeId
	end
	return universeId
end
