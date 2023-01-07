local AddFriendsActions = require(script:FindFirstAncestor("FriendsLanding").Actions.AddFriends)
local SetTencentAuthInfoAction = AddFriendsActions.SetTencentAuthInfo

return function(dispatch)
	return {
		setTencentAuthInfo = function(tencentAuthInfo)
			return dispatch(SetTencentAuthInfoAction(tencentAuthInfo))
		end,
	}
end
