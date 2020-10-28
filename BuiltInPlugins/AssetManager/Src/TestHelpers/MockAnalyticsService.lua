local MockAnalyticsService = {}
MockAnalyticsService.__index = MockAnalyticsService

function MockAnalyticsService.new()
	local self = {}
	setmetatable(self, MockAnalyticsService)

	self.eventCount = 0
	self.lastEvent = nil
	self.SendEventDeferred = function(self, target, context, event, argsTable)
		local event = {
			target = target,
			ctx = context,
			evt = event
		}

		assert(type(argsTable) == "table", "expected table, argsTable was " .. type(argsTable))
		for i,v in pairs(argsTable) do
			if event[i] ~= nil then
				warn("overriding base keyword " .. i .. "in via argsTable in SendEventDeferred()." )
			end
			event[i] = v
		end

		self.lastEvent = event
		self.eventCount = self.eventCount + 1
	end

	return self
end

return MockAnalyticsService
