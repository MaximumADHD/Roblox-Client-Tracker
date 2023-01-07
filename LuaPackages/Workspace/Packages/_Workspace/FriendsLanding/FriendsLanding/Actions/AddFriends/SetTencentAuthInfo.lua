local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Rodux = dependencies.Rodux
local t = dependencies.t

return Rodux.makeActionCreator(script.Name, function(tencentAuthInfo)
	assert(t.table(tencentAuthInfo), "TencentAuthInfoModel should be a table.")
	return {
		tencentAuthInfo = tencentAuthInfo,
	}
end)
