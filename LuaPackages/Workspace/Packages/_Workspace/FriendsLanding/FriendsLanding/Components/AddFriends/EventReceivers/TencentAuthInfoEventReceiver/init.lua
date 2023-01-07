local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local AddFriendsConstants = require(AddFriends.Constants)

local mapDispatchToProps = require(script.mapDispatchToProps)
local getTencentAuthInfo = require(script.getTencentAuthInfo)

local TencentAuthInfoEventReceiver = Roact.Component:extend("TencentAuthInfoEventReceiver")

function TencentAuthInfoEventReceiver:init()
	local robloxEventReceiver = self.props.RobloxEventReceiver
	self.connections = {
		robloxEventReceiver:observeEvent(AddFriendsConstants.TENCENT_AUTH_INFO_SYNC_EVENT, function(detail, detailType)
			local tencentAuthInfo = getTencentAuthInfo(detail)
			self.props.setTencentAuthInfo(tencentAuthInfo)
		end),
	}
end

function TencentAuthInfoEventReceiver:render() end

function TencentAuthInfoEventReceiver:willUnmount()
	for _, connection in pairs(self.connections) do
		connection:disconnect()
	end
end

return RoactRodux.connect(nil, mapDispatchToProps)(TencentAuthInfoEventReceiver)
