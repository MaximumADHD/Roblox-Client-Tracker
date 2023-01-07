local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local t = dependencies.t

return function(friends)
	assert(t.table(friends))

	return llama.List.sort(friends, function(a, b)
		local aDisplayName = string.lower(a.displayName)
		local bDisplayName = string.lower(b.displayName)
		if aDisplayName ~= bDisplayName then
			return aDisplayName < bDisplayName
		else
			return string.lower(a.username) < string.lower(b.username)
		end
	end)
end
