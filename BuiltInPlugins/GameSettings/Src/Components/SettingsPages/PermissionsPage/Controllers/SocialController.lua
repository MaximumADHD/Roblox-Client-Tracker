local SocialController = {}
SocialController.__index = SocialController

function SocialController.new(networking)
	local self = {}

	self.__networking = networking

	return setmetatable(self, SocialController)
end

function SocialController:friendsV1GET(userId)
	local networking = self.__networking

	return networking:get("friends", "/v1/users/"..userId.."/friends")
end

function SocialController:getUserFriends(userId)
	local response = self:friendsV1GET(userId):await()
	local friends = response.responseBody.data

	local friendIds = {}
	for _,friend in ipairs(friends) do
		table.insert(friendIds, friend.id)
	end

	return friendIds
end

return SocialController