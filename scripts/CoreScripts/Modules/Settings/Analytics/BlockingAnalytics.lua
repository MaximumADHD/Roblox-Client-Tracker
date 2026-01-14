local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local Cryo = require(CorePackages.Packages.Cryo)


local BlockingAnalytics = {}
BlockingAnalytics.__index = BlockingAnalytics


local LocalPlayer = nil :: never
LocalPlayer = PlayersService.LocalPlayer
while not LocalPlayer do
	PlayersService:GetPropertyChangedSignal("LocalPlayer"):Wait()
	LocalPlayer = PlayersService.LocalPlayer
end


function BlockingAnalytics.new(
	localUserId: number?, config: { EventStream: any? }?
)

	localUserId = localUserId or LocalPlayer.UserId

	assert(localUserId, "BlockingAnalytics must be passed the ID of the local user")

	local self = {
		_eventStreamImpl = config and config.EventStream or AnalyticsService,
		localUserId = localUserId,
	}
	setmetatable(self, BlockingAnalytics)

	return self
end

function BlockingAnalytics:action(eventContext, actionName, additionalArgs)
	local target = "AccountSettingsApi"

	additionalArgs = Cryo.Dictionary.join(additionalArgs or {}, {
		blockerUserId = self.localUserId,
	})

	self._eventStreamImpl:SendEventDeferred(target, eventContext, actionName, additionalArgs)
end

return BlockingAnalytics
