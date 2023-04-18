--!nonstrict
local RoduxFriends = script.Parent.Parent
local Packages = script:FindFirstAncestor("RoduxFriends").Parent
local llama = require(Packages.llama)

local getDeepValue = require(RoduxFriends.getDeepValue)

return function(options)
	local keyPath = options.keyPath
	return function(state, userId1, userId2)
		local byUserId = getDeepValue(state, keyPath .. ".byUserId")
		if byUserId[userId1] ~= nil and llama.List.find(byUserId[userId1], userId2) then
			return true
		end

		return false
	end
end
