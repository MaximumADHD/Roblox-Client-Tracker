local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local TencentAuthInfoModel = require(AddFriends.Models.TencentAuthInfoModel)

return function(jsonObject)
	return TencentAuthInfoModel.new(jsonObject)
end
