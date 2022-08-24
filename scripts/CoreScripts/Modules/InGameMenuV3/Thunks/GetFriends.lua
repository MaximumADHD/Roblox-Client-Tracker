local InGameMenu = script.Parent.Parent
local Promise = require(InGameMenu.Utility.Promise)
local SetFriends = require(InGameMenu.Actions.SetFriends)

return function(playersService)
	return function(store)
		return Promise.new(function(resolve, reject)
			coroutine.wrap(function()
				local localPlayer = playersService.LocalPlayer
				local success, friendsPages = pcall(function()
					return playersService:GetFriendsAsync(localPlayer.UserId)
				end)

				if not success then
					reject("Error loading online friends")
					return
				end

				local friends = {}

				while true do
					for _, item in ipairs(friendsPages:GetCurrentPage()) do
						friends[#friends + 1] = item
					end

					if not friendsPages.IsFinished then
						success = pcall(function()
							friendsPages:AdvanceToNextPageAsync()
						end)
						if not success then
							reject("Error loading online friends")
							return
						end
					else
						break
					end
				end

				store:dispatch(SetFriends(friends))
				resolve(friends)
			end)()
		end)
	end
end
