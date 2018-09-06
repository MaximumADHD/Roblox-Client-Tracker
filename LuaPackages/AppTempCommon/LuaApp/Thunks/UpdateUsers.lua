local CorePackages = game:GetService("CorePackages")

local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)
local AddUsers = require(CorePackages.AppTempCommon.LuaApp.Actions.AddUsers)
local SetFriendCount = require(CorePackages.AppTempCommon.LuaApp.Actions.SetFriendCount)

return function(users)
	return function(store)
		local friendCountOffset = 0
		local updatedUsers = {}

		for _, user in pairs(users) do
			local needsUpdate = false
			local userId = user.id
			local isFriend = user.isFriend
			local offset = 0

			assert(typeof(isFriend) == "boolean")

			local userInStore = store:getState().Users[userId]
			if userInStore then
				-- Mark user with needsUpdate if any of the field is different
				-- from the existing user information in Store.
				if not User.compare(userInStore, user) then
					needsUpdate = true
					if userInStore.isFriend ~= isFriend then
						offset = isFriend and 1 or -1
					end
				end
			else
				needsUpdate = true
				offset = isFriend and 1 or 0
			end

			if needsUpdate then
				friendCountOffset = friendCountOffset + offset
				updatedUsers[userId] = user
			end
		end

		if next(updatedUsers) then
			store:dispatch(AddUsers(updatedUsers))
		end

		if friendCountOffset ~= 0 then
			local currentFriendCount = store:getState().FriendCount
			store:dispatch(SetFriendCount(currentFriendCount + friendCountOffset))
		end
	end
end