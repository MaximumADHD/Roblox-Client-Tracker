--!nonstrict
local RoduxFriends = script.Parent.Parent
local Packages = script:FindFirstAncestor("Packages")
local Cryo = require(Packages.Cryo)

local getDeepValue = require(RoduxFriends.getDeepValue)

return function(options)
	local keyPath = options.keyPath
	return function(state, userId1, userId2)
		local byUserId = getDeepValue(state, keyPath .. ".byUserId")
		if byUserId[userId1] ~= nil and Cryo.List.find(byUserId[userId1], userId2) then
			return true
		end

		return false
	end
end
