local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Roact = dependencies.Roact

return function(element, providerTable)
	local accumulator = element
	for _, v in pairs(providerTable) do
		accumulator = Roact.createElement(v[1], v[2], { accumulator })
	end

	return accumulator
end
