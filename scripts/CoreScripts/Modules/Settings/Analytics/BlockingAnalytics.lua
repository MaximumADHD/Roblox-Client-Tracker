local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)

local BlockingAnalytics = {}
BlockingAnalytics.__index = BlockingAnalytics

function BlockingAnalytics.new(localUserId, config)
	assert(localUserId, "BlockingAnalytics must be passed the ID of the local user")

	local self = {
		_eventStreamImpl = config.EventStream,
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
