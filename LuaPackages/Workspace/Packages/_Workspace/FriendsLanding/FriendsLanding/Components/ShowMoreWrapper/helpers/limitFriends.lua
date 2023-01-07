local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local t = dependencies.t

return function(limit, friends)
	assert(t.table(friends))
	assert(t.number(limit))

	return llama.List.filter(friends, function(_, index)
		return index <= limit
	end)
end
