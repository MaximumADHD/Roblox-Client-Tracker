local Root = script:FindFirstAncestor("rodux-friends")
local Packages = Root.Parent
local Cryo = require(Packages.Cryo)

local getDeepValue = require(Root.getDeepValue)

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
